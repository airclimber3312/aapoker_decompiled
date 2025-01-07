.class final Lcom/google/firebase/database/connection/idl/zzg;
.super Lcom/google/firebase/database/connection/idl/zzr;


# instance fields
.field private synthetic zzncv:Lcom/google/android/gms/internal/zzeev;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzf;Lcom/google/android/gms/internal/zzeev;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzncv:Lcom/google/android/gms/internal/zzeev;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzr;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbwq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzncv:Lcom/google/android/gms/internal/zzeev;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeev;->zzbwq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbwr()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzncv:Lcom/google/android/gms/internal/zzeev;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeev;->zzbwr()Z

    move-result v0

    return v0
.end method

.method public final zzbxq()Lcom/google/firebase/database/connection/idl/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzncv:Lcom/google/android/gms/internal/zzeev;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeev;->zzbws()Lcom/google/android/gms/internal/zzeel;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zza;->zza(Lcom/google/android/gms/internal/zzeel;)Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v0

    return-object v0
.end method
