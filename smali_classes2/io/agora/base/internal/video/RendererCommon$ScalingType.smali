.class public final enum Lio/agora/base/internal/video/RendererCommon$ScalingType;
.super Ljava/lang/Enum;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/RendererCommon$ScalingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_BALANCED:Lio/agora/base/internal/video/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_FILL:Lio/agora/base/internal/video/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_FIT:Lio/agora/base/internal/video/RendererCommon$ScalingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 141
    new-instance v0, Lio/agora/base/internal/video/RendererCommon$ScalingType;

    const-string v1, "SCALE_ASPECT_FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/base/internal/video/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/base/internal/video/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lio/agora/base/internal/video/RendererCommon$ScalingType;

    new-instance v1, Lio/agora/base/internal/video/RendererCommon$ScalingType;

    const-string v3, "SCALE_ASPECT_FILL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/base/internal/video/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/base/internal/video/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lio/agora/base/internal/video/RendererCommon$ScalingType;

    new-instance v3, Lio/agora/base/internal/video/RendererCommon$ScalingType;

    const-string v5, "SCALE_ASPECT_BALANCED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/agora/base/internal/video/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/base/internal/video/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lio/agora/base/internal/video/RendererCommon$ScalingType;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/agora/base/internal/video/RendererCommon$ScalingType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/agora/base/internal/video/RendererCommon$ScalingType;->$VALUES:[Lio/agora/base/internal/video/RendererCommon$ScalingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/RendererCommon$ScalingType;
    .locals 1

    .line 141
    const-class v0, Lio/agora/base/internal/video/RendererCommon$ScalingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/RendererCommon$ScalingType;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/RendererCommon$ScalingType;
    .locals 1

    .line 141
    sget-object v0, Lio/agora/base/internal/video/RendererCommon$ScalingType;->$VALUES:[Lio/agora/base/internal/video/RendererCommon$ScalingType;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/RendererCommon$ScalingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/RendererCommon$ScalingType;

    return-object v0
.end method
