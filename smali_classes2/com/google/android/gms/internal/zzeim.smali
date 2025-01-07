.class final Lcom/google/android/gms/internal/zzeim;
.super Lcom/google/android/gms/internal/zzemv;


# instance fields
.field private synthetic zzneb:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zznho:Lcom/google/android/gms/internal/zzeil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeil;Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeim;->zznho:Lcom/google/android/gms/internal/zzeil;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeim;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeim;->zznho:Lcom/google/android/gms/internal/zzeil;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeim;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzeil;->zzh(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    return-void
.end method
