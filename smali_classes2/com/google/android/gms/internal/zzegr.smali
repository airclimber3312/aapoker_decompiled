.class public abstract Lcom/google/android/gms/internal/zzegr;
.super Ljava/lang/Object;


# instance fields
.field private zzner:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zznes:Lcom/google/android/gms/internal/zzegs;

.field private zznet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegr;->zzner:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzegr;->zznet:Z

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzegr;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzelj;Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelk;
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegr;->zznes:Lcom/google/android/gms/internal/zzegs;

    return-void
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzelk;)V
.end method

.method public abstract zza(Lcom/google/firebase/database/DatabaseError;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzelm;)Z
.end method

.method public abstract zzbxy()Lcom/google/android/gms/internal/zzelu;
.end method

.method public final zzbyl()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegr;->zzner:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegr;->zznes:Lcom/google/android/gms/internal/zzegs;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzegs;->zzd(Lcom/google/android/gms/internal/zzegr;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegr;->zznes:Lcom/google/android/gms/internal/zzegs;

    :cond_0
    return-void
.end method

.method public final zzbym()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegr;->zzner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/zzegr;)Z
.end method

.method public final zzcv(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzegr;->zznet:Z

    return-void
.end method
