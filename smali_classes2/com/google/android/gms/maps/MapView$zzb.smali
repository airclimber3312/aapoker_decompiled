.class final Lcom/google/android/gms/maps/MapView$zzb;
.super Lcom/google/android/gms/dynamic/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zza<",
        "Lcom/google/android/gms/maps/MapView$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private zzjbn:Lcom/google/android/gms/dynamic/zzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/zzo<",
            "Lcom/google/android/gms/maps/MapView$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzjbo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final zzjbs:Landroid/view/ViewGroup;

.field private final zzjbt:Landroid/content/Context;

.field private final zzjbu:Lcom/google/android/gms/maps/GoogleMapOptions;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/zza;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbo:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbs:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbt:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbu:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method


# virtual methods
.method public final getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zza;->zzarg()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zza;->zzarg()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/dynamic/zzo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/zzo<",
            "Lcom/google/android/gms/maps/MapView$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbn:Lcom/google/android/gms/dynamic/zzo;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zza;->zzarg()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbt:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    iget-object p1, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbt:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/maps/internal/zzbz;->zzdz(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbt:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbu:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/maps/internal/zze;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbn:Lcom/google/android/gms/dynamic/zzo;

    new-instance v1, Lcom/google/android/gms/maps/MapView$zza;

    iget-object v2, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbs:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/maps/MapView$zza;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IMapViewDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/zzo;->zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    iget-object p1, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/zza;->zzarg()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/MapView$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/MapView$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/maps/MapView$zzb;->zzjbo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    :cond_2
    return-void
.end method
