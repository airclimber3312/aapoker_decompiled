.class final Lcom/google/android/gms/internal/zzazu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;


# instance fields
.field private synthetic zzert:Lcom/google/android/gms/internal/zzazy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazt;Lcom/google/android/gms/internal/zzazy;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazu;->zzert:Lcom/google/android/gms/internal/zzazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBeaconState()Lcom/google/android/gms/awareness/state/BeaconState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazu;->zzert:Lcom/google/android/gms/internal/zzazy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazy;->zzadl()Lcom/google/android/gms/internal/zzazd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazu;->zzert:Lcom/google/android/gms/internal/zzazy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazy;->zzadl()Lcom/google/android/gms/internal/zzazd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzazd;->zzadg()Lcom/google/android/gms/internal/zzayo;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazu;->zzert:Lcom/google/android/gms/internal/zzazy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazy;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
