.class public final enum Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/musiccontentcenter/IAgoraMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MusicPlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

.field public static final enum MUSIC_PLAY_MODE_ACCOMPANY:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

.field public static final enum MUSIC_PLAY_MODE_LEAD_SING:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

.field public static final enum MUSIC_PLAY_MODE_ORIGINAL:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    const-string v1, "MUSIC_PLAY_MODE_ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->MUSIC_PLAY_MODE_ORIGINAL:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    new-instance v1, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    const-string v3, "MUSIC_PLAY_MODE_ACCOMPANY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->MUSIC_PLAY_MODE_ACCOMPANY:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    new-instance v3, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    const-string v5, "MUSIC_PLAY_MODE_LEAD_SING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->MUSIC_PLAY_MODE_LEAD_SING:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->$VALUES:[Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

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
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->MUSIC_PLAY_MODE_LEAD_SING:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    return-object p0

    :cond_1
    sget-object p0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->MUSIC_PLAY_MODE_ACCOMPANY:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    return-object p0

    :cond_2
    sget-object p0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->MUSIC_PLAY_MODE_ORIGINAL:Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    return-object p0
.end method

.method public static values()[Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;
    .locals 1

    sget-object v0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->$VALUES:[Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    invoke-virtual {v0}, [Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lio/agora/musiccontentcenter/IAgoraMusicPlayer$MusicPlayMode;->value:I

    return v0
.end method
