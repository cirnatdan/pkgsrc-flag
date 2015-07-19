# This file provides simple access to git repositories, so that packages
# can be created from git instead of from released tarballs.
#
# A package using this file shall define the following variables:
#
#	GIT_REPOSITORIES
#		A list of unique identifiers /id/ for which appropriate
#		GIT_REPO must be defined.
#
#	GIT_REPO.${id}
#		The git repository
#
# It may define the following variables:
#
#	GIT_TAG
#		The tag to check out (default: HEAD).
#
#	GIT_TAG.${id}
#		Overridable GIT tag for a repository.
#

.if !defined(_PKG_MK_GIT_PACKAGE_MK)
_PKG_MK_GIT_PACKAGE_MK=	# defined

.if exists(../../devel/git/Makefile)
BUILD_DEPENDS+=		git-base>=1.6.4:../../devel/git-base
.else
BUILD_DEPENDS+=		scmgit-base>=1.6.4:../../devel/scmgit-base
.endif

#
# defaults for user-visible input variables
#

DISTFILES?=		# empty
.if empty(GIT_TAG)
. if defined(CHECKOUT_DATE)
PKGREVISION?=		$(CHECKOUT_DATE:S/-//g)
. else
PKGREVISION?=		${_GIT_PKGVERSION:S/.//g}
. endif
.endif

#
# End of the interface part. Start of the implementation part.
#

#
# Input validation
#

.if !defined(GIT_REPOSITORIES)
PKG_FAIL_REASON+=	"[git-package.mk] GIT_REPOSITORIES must be set."
GIT_REPOSITORIES?=	# none
.endif

.for _repo_ in ${GIT_REPOSITORIES}
.  if !defined(GIT_REPO.${_repo_})
PKG_FAIL_REASON+=	"[git-package.mk] GIT_REPO."${_repo_:Q}" must be set."
.  endif
.endfor

#
# Internal variables
#

USE_TOOLS+=		date pax

_GIT_CMD=		git
_GIT_ENV=		# empty
_GIT_FLAGS=		--quiet --depth 1
_GIT_TODAY_CMD=		${DATE} -u +'%Y-%m-%d'
_GIT_TODAY=		${_GIT_TODAY_CMD:sh}
_GIT_PKGVERSION_CMD=	${DATE} -u +'%Y.%m.%d'
_GIT_PKGVERSION=	${_GIT_PKGVERSION_CMD:sh}
_GIT_DISTDIR=		${DISTDIR}/git-packages

#
# Generation of repository-specific variables
#

.for repo in ${GIT_REPOSITORIES}
GIT_MODULE.${repo}?=	${repo}

# determine appropriate or tag
.  if defined(GIT_TAG.${repo})
_GIT_TAG_FLAG.${repo}=	-b ${GIT_TAG.${repo}}
_GIT_TAG.${repo}=	${GIT_TAG.${repo}}
.  elif defined(GIT_TAG)
_GIT_TAG_FLAG.${repo}=	-b ${GIT_TAG}
_GIT_TAG.${repo}=	${GIT_TAG}
.  else
_GIT_TAG_FLAG.${repo}= -b master
_GIT_TAG.${repo}=	master-${_GIT_PKGVERSION}
.  endif

.  if defined(GIT_CHECKOUT_REVISION.${repo})
_GIT_CHECKOUT_REVISION.${repo}= ${GIT_CHECKOUT_REVISION.${repo}}
_GIT_FLAGS= --quiet
.  endif

# Checkout revision support:
_GIT_CHECKOUT.${repo}?=
. if defined(_GIT_CHECKOUT_REVISION.${repo})
_GIT_CHECKOUT.${repo}=	\
	${_GIT_CMD} checkout ${_GIT_CHECKOUT_REVISION.{$repo}}
. endif
	

# Cache support:
#   cache file name
.  if defined(_GIT_CHECKOUT_REVISION.${repo})
_GIT_DISTFILE.${repo}=	${PKGBASE}-${GIT_MODULE.${repo}}-${_GIT_TAG.${repo}}-${_GIT_CHECKOUT_REVISION.${repo}}.tar.gz
.  else
_GIT_DISTFILE.${repo}=	${PKGBASE}-${GIT_MODULE.${repo}}-${_GIT_TAG.${repo}}.tar.gz
.  endif

#   command to extract cache file
_GIT_EXTRACT_CACHED.${repo}=	\
	if [ -f ${_GIT_DISTDIR}/${_GIT_DISTFILE.${repo}:Q} ]; then		\
	  ${STEP_MSG} "Extracting cached GIT archive "${_GIT_DISTFILE.${repo}:Q}"."; \
	  gzip -d -c ${_GIT_DISTDIR}/${_GIT_DISTFILE.${repo}:Q} | pax -r;	\
	  exit 0;							\
	fi

#   create cache archive
_GIT_CREATE_CACHE.${repo}=	\
	${STEP_MSG} "Creating cached GIT archive "${_GIT_DISTFILE.${repo}:Q}"."; \
	${MKDIR} ${_GIT_DISTDIR:Q};					\
	pax -w ${GIT_MODULE.${repo}:Q} | gzip > ${_GIT_DISTDIR}/${_GIT_DISTFILE.${repo}:Q}
.endfor

pre-extract: do-git-extract

.PHONY: do-git-extract
do-git-extract:
.for _repo_ in ${GIT_REPOSITORIES}
	${RUN} cd ${WRKDIR};						\
	if [ ! -d ${_GIT_DISTDIR:Q} ]; then mkdir -p ${_GIT_DISTDIR:Q}; fi;	\
	${_GIT_EXTRACT_CACHED.${_repo_}};				\
	${SETENV} ${_GIT_ENV}						\
		${_GIT_CMD} clone					\
			${_GIT_FLAGS}		 			\
			${_GIT_TAG_FLAG.${_repo_}}			\
			${GIT_REPO.${_repo_}:Q}    \
			${DISTNAME};			\
		${_GIT_CHECKOUT}			\
	${_GIT_CREATE_CACHE.${_repo_}}
.endfor

.endif
