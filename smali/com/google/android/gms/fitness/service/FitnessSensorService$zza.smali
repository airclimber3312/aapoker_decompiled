.class final Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;
.super Lcom/google/android/gms/internal/zzccd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/service/FitnessSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzhqb:Lcom/google/android/gms/fitness/service/FitnessSensorService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/service/FitnessSensorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;->zzhqb:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/service/FitnessSensorService;Lcom/google/android/gms/fitness/service/zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;-><init>(Lcom/google/android/gms/fitness/service/FitnessSensorService;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Lcom/google/android/gms/internal/zzbzt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;->zzhqb:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->zzasl()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;->zzhqb:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->onRegister(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzbzt;->zzn(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcby;Lcom/google/android/gms/internal/zzbyn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;->zzhqb:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->zzasl()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;->zzhqb:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcby;->getDataTypes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->onFindDataSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/fitness/result/DataSourcesResult;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzbyn;->zza(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcca;Lcom/google/android/gms/internal/zzbzt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;->zzhqb:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->zzasl()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorService$zza;->zzhqb:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcca;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->onUnregister(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzbzt;->zzn(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0
.end method
