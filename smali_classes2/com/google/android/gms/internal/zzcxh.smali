.class final Lcom/google/android/gms/internal/zzcxh;
.super Lcom/google/android/gms/internal/zzcxf$zzf;


# instance fields
.field private synthetic zzkkk:Ljava/lang/String;

.field private synthetic zzkkl:Ljava/util/List;

.field private synthetic zzkkm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcxf;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcxh;->zzkkl:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcxh;->zzkkm:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxh;->zzkkk:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcxf$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzcxs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxh;->zzkkr:Lcom/google/android/gms/internal/zzcxb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxh;->zzkkl:Ljava/util/List;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcxh;->zzkkm:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcxh;->zzkkk:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcxs;->zza(Lcom/google/android/gms/internal/zzcxb;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
