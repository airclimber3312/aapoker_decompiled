.class Lio/agora/base/internal/video/EglRenderer$Color;
.super Ljava/lang/Object;
.source "EglRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Color"
.end annotation


# instance fields
.field public alpha:F

.field public blue:F

.field public green:F

.field public red:F

.field final synthetic this$0:Lio/agora/base/internal/video/EglRenderer;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/video/EglRenderer;I)V
    .locals 1

    .line 56
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$Color;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 57
    iput p1, p0, Lio/agora/base/internal/video/EglRenderer$Color;->red:F

    shr-int/lit8 p1, p2, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 58
    iput p1, p0, Lio/agora/base/internal/video/EglRenderer$Color;->green:F

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 59
    iput p1, p0, Lio/agora/base/internal/video/EglRenderer$Color;->blue:F

    and-int/lit16 p1, p2, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 60
    iput p1, p0, Lio/agora/base/internal/video/EglRenderer$Color;->alpha:F

    return-void
.end method
