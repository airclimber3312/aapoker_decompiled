.class public final enum Lio/agora/base/VideoFrame$SourceType;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/VideoFrame$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/VideoFrame$SourceType;

.field public static final enum kBackCamera:Lio/agora/base/VideoFrame$SourceType;

.field public static final enum kFrontCamera:Lio/agora/base/VideoFrame$SourceType;

.field public static final enum kUnspecified:Lio/agora/base/VideoFrame$SourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 349
    new-instance v0, Lio/agora/base/VideoFrame$SourceType;

    const-string v1, "kFrontCamera"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/base/VideoFrame$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/base/VideoFrame$SourceType;->kFrontCamera:Lio/agora/base/VideoFrame$SourceType;

    .line 350
    new-instance v1, Lio/agora/base/VideoFrame$SourceType;

    const-string v3, "kBackCamera"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/base/VideoFrame$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/base/VideoFrame$SourceType;->kBackCamera:Lio/agora/base/VideoFrame$SourceType;

    .line 351
    new-instance v3, Lio/agora/base/VideoFrame$SourceType;

    const-string v5, "kUnspecified"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/agora/base/VideoFrame$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/base/VideoFrame$SourceType;->kUnspecified:Lio/agora/base/VideoFrame$SourceType;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/agora/base/VideoFrame$SourceType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 348
    sput-object v5, Lio/agora/base/VideoFrame$SourceType;->$VALUES:[Lio/agora/base/VideoFrame$SourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/VideoFrame$SourceType;
    .locals 1

    .line 348
    const-class v0, Lio/agora/base/VideoFrame$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/VideoFrame$SourceType;

    return-object p0
.end method

.method public static values()[Lio/agora/base/VideoFrame$SourceType;
    .locals 1

    .line 348
    sget-object v0, Lio/agora/base/VideoFrame$SourceType;->$VALUES:[Lio/agora/base/VideoFrame$SourceType;

    invoke-virtual {v0}, [Lio/agora/base/VideoFrame$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/VideoFrame$SourceType;

    return-object v0
.end method
