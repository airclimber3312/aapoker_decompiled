.class public abstract Lcom/google/android/gms/internal/zzbyo;
.super Lcom/google/android/gms/internal/zzew;

# interfaces
.implements Lcom/google/android/gms/internal/zzbyn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzew;-><init>()V

    const-string v0, "com.google.android.gms.fitness.internal.IDataSourcesCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzbyo;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzau(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbyn;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.fitness.internal.IDataSourcesCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbyn;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzbyn;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbyp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbyp;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzew;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    return p4

    :cond_0
    if-ne p1, p4, :cond_1

    sget-object p1, Lcom/google/android/gms/fitness/result/DataSourcesResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/result/DataSourcesResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbyo;->zza(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
