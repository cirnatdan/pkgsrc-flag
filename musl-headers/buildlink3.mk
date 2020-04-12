# $NetBSD$

BUILDLINK_TREE+=	musl-headers

.if !defined(MUSL_HEADERS_BUILDLINK3_MK)
MUSL_HEADERS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.musl-headers+=	musl-headers>=1.2.0
BUILDLINK_PKGSRCDIR.musl-headers?=	../../flag/musl-headers
BUILDLINK_DEPMETHOD.musl-headers?=	build
.endif	# MUSL_HEADERS_BUILDLINK3_MK

BUILDLINK_TREE+=	-musl-headers
