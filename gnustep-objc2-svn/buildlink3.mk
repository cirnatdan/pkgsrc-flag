# $NetBSD: buildlink3.mk,v 1.8 2009/04/13 12:12:44 rh Exp $

BUILDLINK_TREE+=	gnustep-objc2

.if !defined(GNUSTEP_OBJC2_BUILDLINK3_MK)
GNUSTEP_OBJC2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnustep-objc2+=	gnustep-objc2>=201103
BUILDLINK_ABI_DEPENDS.gnustep-objc2?=	gnustep-objc2>=201103
BUILDLINK_PKGSRCDIR.gnustep-objc2?=	../../devel/gnustep-objc

BUILDLINK_LDFLAGS.gnustep-objc2+=	-lobjc -lpthread

#.include "../../flag/gnustep-make-svn/buildlink3.mk"
.endif # GNUSTEP_OBJC_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnustep-objc2
