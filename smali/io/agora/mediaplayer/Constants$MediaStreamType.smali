.class public final enum Lio/agora/mediaplayer/Constants$MediaStreamType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/mediaplayer/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaStreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/mediaplayer/Constants$MediaStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/mediaplayer/Constants$MediaStreamType;

.field public static final enum STREAM_TYPE_AUDIO:Lio/agora/mediaplayer/Constants$MediaStreamType;

.field public static final enum STREAM_TYPE_SUBTITLE:Lio/agora/mediaplayer/Constants$MediaStreamType;

.field public static final enum STREAM_TYPE_UNKNOWN:Lio/agora/mediaplayer/Constants$MediaStreamType;

.field public static final enum STREAM_TYPE_VIDEO:Lio/agora/mediaplayer/Constants$MediaStreamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/agora/mediaplayer/Constants$MediaStreamType;

    const-string v1, "STREAM_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/mediaplayer/Constants$MediaStreamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/mediaplayer/Constants$MediaStreamType;->STREAM_TYPE_UNKNOWN:Lio/agora/mediaplayer/Constants$MediaStreamType;

    new-instance v1, Lio/agora/mediaplayer/Constants$MediaStreamType;

    const-string v3, "STREAM_TYPE_VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/mediaplayer/Constants$MediaStreamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/mediaplayer/Constants$MediaStreamType;->STREAM_TYPE_VIDEO:Lio/agora/mediaplayer/Constants$MediaStreamType;

    new-instance v3, Lio/agora/mediaplayer/Constants$MediaStreamType;

    const-string v5, "STREAM_TYPE_AUDIO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/mediaplayer/Constants$MediaStreamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/mediaplayer/Constants$MediaStreamType;->STREAM_TYPE_AUDIO:Lio/agora/mediaplayer/Constants$MediaStreamType;

    new-instance v5, Lio/agora/mediaplayer/Constants$MediaStreamType;

    const-string v7, "STREAM_TYPE_SUBTITLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/agora/mediaplayer/Constants$MediaStreamType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/mediaplayer/Constants$MediaStreamType;->STREAM_TYPE_SUBTITLE:Lio/agora/mediaplayer/Constants$MediaStreamType;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/agora/mediaplayer/Constants$MediaStreamType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/agora/mediaplayer/Constants$MediaStreamType;->$VALUES:[Lio/agora/mediaplayer/Constants$MediaStreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/agora/mediaplayer/Constants$MediaStreamType;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/mediaplayer/Constants$MediaStreamType;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget p0, p0, Lio/agora/mediaplayer/Constants$MediaStreamType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/mediaplayer/Constants$MediaStreamType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/mediaplayer/Constants$MediaStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/mediaplayer/Constants$MediaStreamType;

    return-object p0
.end method

.method public static values()[Lio/agora/mediaplayer/Constants$MediaStreamType;
    .locals 1

    sget-object v0, Lio/agora/mediaplayer/Constants$MediaStreamType;->$VALUES:[Lio/agora/mediaplayer/Constants$MediaStreamType;

    invoke-virtual {v0}, [Lio/agora/mediaplayer/Constants$MediaStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/mediaplayer/Constants$MediaStreamType;

    return-object v0
.end method
