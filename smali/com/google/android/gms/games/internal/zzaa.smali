.class public Lcom/google/android/gms/games/internal/zzaa;
.super Ljava/lang/Object;


# instance fields
.field protected zziac:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field protected zziad:Lcom/google/android/gms/games/internal/zzac;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzaa;->zziac:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/internal/zzaa;->zzdv(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;ILcom/google/android/gms/games/internal/zzab;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzaa;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    return-void
.end method


# virtual methods
.method public zzaa(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public zzaux()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaa;->zziac:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzaa;->zziad:Lcom/google/android/gms/games/internal/zzac;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/zzac;->zziae:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzaa;->zziad:Lcom/google/android/gms/games/internal/zzac;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzac;->zzauy()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected zzdv(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/zzac;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/zzab;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzaa;->zziad:Lcom/google/android/gms/games/internal/zzac;

    return-void
.end method
