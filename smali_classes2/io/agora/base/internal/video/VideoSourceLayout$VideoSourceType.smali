.class final enum Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/VideoSourceLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VideoSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

.field public static final enum CANVAS:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

.field public static final enum GIF:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

.field public static final enum PIC:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

.field public static final enum STREAM:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

.field public static final enum UNKNOWN:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->UNKNOWN:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    new-instance v1, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    const-string v3, "STREAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->STREAM:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    new-instance v3, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    const-string v5, "PIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->PIC:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    new-instance v5, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    const-string v7, "GIF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->GIF:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    new-instance v7, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    const-string v9, "CANVAS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->CANVAS:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->$VALUES:[Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;
    .locals 1

    sget-object v0, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->$VALUES:[Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    return-object v0
.end method
