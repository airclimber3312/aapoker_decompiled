.class public final Lcom/google/android/gms/internal/zzbdb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/PlayerInfo;


# instance fields
.field private final zzexd:I

.field private final zzfld:Ljava/lang/String;

.field private final zzfls:Lorg/json/JSONObject;

.field private final zzflt:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdb;->zzfld:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzbdb;->zzexd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbdb;->zzfls:Lorg/json/JSONObject;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbdb;->zzflt:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/google/android/gms/cast/games/PlayerInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/cast/games/PlayerInfo;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbdb;->zzflt:Z

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/PlayerInfo;->isControllable()Z

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/zzbdb;->zzexd:I

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerState()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdb;->zzfld:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbdw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdb;->zzfls:Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/util/zzq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getPlayerData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdb;->zzfls:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdb;->zzfld:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbdb;->zzexd:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdb;->zzfld:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzbdb;->zzexd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdb;->zzfls:Lorg/json/JSONObject;

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbdb;->zzflt:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbdb;->zzexd:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isControllable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbdb;->zzflt:Z

    return v0
.end method
