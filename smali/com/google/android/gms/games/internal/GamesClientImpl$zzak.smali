.class final Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzak"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzcc:I

.field private final zzhxr:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;->zzcc:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;->zzhxr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzajh()V
    .locals 0

    return-void
.end method

.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;->zzcc:I

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;->zzhxr:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onLeftRoom(ILjava/lang/String;)V

    return-void
.end method
