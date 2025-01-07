.class final enum Lio/agora/base/internal/video/VideoCodecType;
.super Ljava/lang/Enum;
.source "VideoCodecType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/VideoCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/VideoCodecType;

.field public static final enum H264:Lio/agora/base/internal/video/VideoCodecType;

.field public static final enum H265:Lio/agora/base/internal/video/VideoCodecType;

.field public static final enum UNKNOWN:Lio/agora/base/internal/video/VideoCodecType;

.field public static final enum VP8:Lio/agora/base/internal/video/VideoCodecType;

.field public static final enum VP9:Lio/agora/base/internal/video/VideoCodecType;

.field private static _values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 17
    new-instance v0, Lio/agora/base/internal/video/VideoCodecType;

    const-string v1, "video/x-vnd.on2.vp8"

    const-string v2, "VP8"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/agora/base/internal/video/VideoCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/agora/base/internal/video/VideoCodecType;->VP8:Lio/agora/base/internal/video/VideoCodecType;

    .line 18
    new-instance v1, Lio/agora/base/internal/video/VideoCodecType;

    const-string v2, "video/x-vnd.on2.vp9"

    const-string v4, "VP9"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/agora/base/internal/video/VideoCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/agora/base/internal/video/VideoCodecType;->VP9:Lio/agora/base/internal/video/VideoCodecType;

    .line 19
    new-instance v2, Lio/agora/base/internal/video/VideoCodecType;

    const-string v4, "video/avc"

    const-string v6, "H264"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lio/agora/base/internal/video/VideoCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/agora/base/internal/video/VideoCodecType;->H264:Lio/agora/base/internal/video/VideoCodecType;

    .line 20
    new-instance v4, Lio/agora/base/internal/video/VideoCodecType;

    const-string v6, "video/hevc"

    const-string v8, "H265"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lio/agora/base/internal/video/VideoCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/agora/base/internal/video/VideoCodecType;->H265:Lio/agora/base/internal/video/VideoCodecType;

    .line 21
    new-instance v6, Lio/agora/base/internal/video/VideoCodecType;

    const-string v8, "video/unknown"

    const-string v10, "UNKNOWN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lio/agora/base/internal/video/VideoCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/agora/base/internal/video/VideoCodecType;->UNKNOWN:Lio/agora/base/internal/video/VideoCodecType;

    const/4 v8, 0x5

    new-array v8, v8, [Lio/agora/base/internal/video/VideoCodecType;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    .line 16
    sput-object v8, Lio/agora/base/internal/video/VideoCodecType;->$VALUES:[Lio/agora/base/internal/video/VideoCodecType;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/agora/base/internal/video/VideoCodecType;->_values:Ljava/util/Set;

    .line 26
    invoke-static {}, Lio/agora/base/internal/video/VideoCodecType;->values()[Lio/agora/base/internal/video/VideoCodecType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 27
    sget-object v4, Lio/agora/base/internal/video/VideoCodecType;->_values:Ljava/util/Set;

    invoke-virtual {v2}, Lio/agora/base/internal/video/VideoCodecType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lio/agora/base/internal/video/VideoCodecType;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 42
    sget-object v0, Lio/agora/base/internal/video/VideoCodecType;->_values:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/VideoCodecType;
    .locals 1

    .line 16
    const-class v0, Lio/agora/base/internal/video/VideoCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/VideoCodecType;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/VideoCodecType;
    .locals 1

    .line 16
    sget-object v0, Lio/agora/base/internal/video/VideoCodecType;->$VALUES:[Lio/agora/base/internal/video/VideoCodecType;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/VideoCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/VideoCodecType;

    return-object v0
.end method


# virtual methods
.method mimeType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/agora/base/internal/video/VideoCodecType;->mimeType:Ljava/lang/String;

    return-object v0
.end method
