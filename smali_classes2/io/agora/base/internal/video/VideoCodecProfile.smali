.class final enum Lio/agora/base/internal/video/VideoCodecProfile;
.super Ljava/lang/Enum;
.source "VideoCodecProfile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/VideoCodecProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/VideoCodecProfile;

.field public static final enum HEVCMain10:Lio/agora/base/internal/video/VideoCodecProfile;

.field public static final enum HEVCMain10HDR10:Lio/agora/base/internal/video/VideoCodecProfile;

.field public static final enum HEVCMain10HDR10Plus:Lio/agora/base/internal/video/VideoCodecProfile;

.field public static final enum UNKNOWN:Lio/agora/base/internal/video/VideoCodecProfile;

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
.field private final profile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lio/agora/base/internal/video/VideoCodecProfile;

    const-string v1, "profile/2"

    const-string v2, "HEVCMain10"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/agora/base/internal/video/VideoCodecProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/agora/base/internal/video/VideoCodecProfile;->HEVCMain10:Lio/agora/base/internal/video/VideoCodecProfile;

    .line 18
    new-instance v1, Lio/agora/base/internal/video/VideoCodecProfile;

    const-string v2, "profile/4096"

    const-string v4, "HEVCMain10HDR10"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/agora/base/internal/video/VideoCodecProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/agora/base/internal/video/VideoCodecProfile;->HEVCMain10HDR10:Lio/agora/base/internal/video/VideoCodecProfile;

    .line 19
    new-instance v2, Lio/agora/base/internal/video/VideoCodecProfile;

    const-string v4, "profile/8192"

    const-string v6, "HEVCMain10HDR10Plus"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lio/agora/base/internal/video/VideoCodecProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/agora/base/internal/video/VideoCodecProfile;->HEVCMain10HDR10Plus:Lio/agora/base/internal/video/VideoCodecProfile;

    .line 20
    new-instance v4, Lio/agora/base/internal/video/VideoCodecProfile;

    const-string v6, "profile/0"

    const-string v8, "UNKNOWN"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lio/agora/base/internal/video/VideoCodecProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/agora/base/internal/video/VideoCodecProfile;->UNKNOWN:Lio/agora/base/internal/video/VideoCodecProfile;

    const/4 v6, 0x4

    new-array v6, v6, [Lio/agora/base/internal/video/VideoCodecProfile;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    .line 16
    sput-object v6, Lio/agora/base/internal/video/VideoCodecProfile;->$VALUES:[Lio/agora/base/internal/video/VideoCodecProfile;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/agora/base/internal/video/VideoCodecProfile;->_values:Ljava/util/Set;

    .line 25
    invoke-static {}, Lio/agora/base/internal/video/VideoCodecProfile;->values()[Lio/agora/base/internal/video/VideoCodecProfile;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 26
    sget-object v4, Lio/agora/base/internal/video/VideoCodecProfile;->_values:Ljava/util/Set;

    invoke-virtual {v2}, Lio/agora/base/internal/video/VideoCodecProfile;->name()Ljava/lang/String;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lio/agora/base/internal/video/VideoCodecProfile;->profile:Ljava/lang/String;

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 47
    sget-object v0, Lio/agora/base/internal/video/VideoCodecProfile;->_values:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/VideoCodecProfile;
    .locals 1

    .line 16
    const-class v0, Lio/agora/base/internal/video/VideoCodecProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/VideoCodecProfile;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/VideoCodecProfile;
    .locals 1

    .line 16
    sget-object v0, Lio/agora/base/internal/video/VideoCodecProfile;->$VALUES:[Lio/agora/base/internal/video/VideoCodecProfile;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/VideoCodecProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/VideoCodecProfile;

    return-object v0
.end method


# virtual methods
.method profile()I
    .locals 2

    .line 37
    iget-object v0, p0, Lio/agora/base/internal/video/VideoCodecProfile;->profile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lio/agora/base/internal/video/VideoCodecProfile;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
