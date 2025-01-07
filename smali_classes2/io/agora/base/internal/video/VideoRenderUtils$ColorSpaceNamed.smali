.class public Lio/agora/base/internal/video/VideoRenderUtils$ColorSpaceNamed;
.super Ljava/lang/Object;
.source "VideoRenderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/VideoRenderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorSpaceNamed"
.end annotation


# static fields
.field public static final BT2020:I = 0x5

.field public static final BT709:I = 0x4

.field public static final DCI_P3:I = 0x6

.field public static final DISPLAY_P3:I = 0x7

.field public static final SRGB:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
