# $NetBSD$

BUILDLINK_TREE+=	butterlibc

.if !defined(BUTTERLIBC_BUILDLINK3_MK)
BUTTERLIBC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.butterlibc+=	butterlibc>=0.0.0nb20200330
BUILDLINK_ABI_DEPENDS.butterlibc+=	butterlibc>=0.0.0nb20200330
BUILDLINK_PKGSRCDIR.butterlibc?=	../../flag/butterlibc-git
BUILDLINK_FILES.butterlibc+=		lib/crt0.o
.endif	# BUTTERLIBC_BUILDLINK3_MK

BUILDLINK_TREE+=	-butterlibc
