.class public Lcom/google/android/gms/location/FusedLocationProviderClient;
.super Lcom/google/android/gms/common/api/GoogleApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/FusedLocationProviderClient$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_VERTICAL_ACCURACY:Ljava/lang/String; = "verticalAccuracy"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zzg;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/zzda;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zzg;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/zzda;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/internal/zzcgr;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/internal/zzcgr;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/internal/zzcgr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/android/gms/internal/zzcgr;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/zzp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/zzp;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-object v0
.end method


# virtual methods
.method public flushLocations()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzahw()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->flushLocations(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbj;->zzb(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/zzl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/zzl;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAvailability()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/LocationAvailability;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/zzm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/zzm;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzahw()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbj;->zzb(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/location/LocationCallback;

    const-string v0, "LocationCallback"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzcm;->zzb(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzdf;->zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzahw()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbj;->zzb(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/location/LocationCallback;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchl;->zza(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzchl;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/internal/zzchz;->zzb(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p3

    const-class v0, Lcom/google/android/gms/location/LocationCallback;

    const-string v0, "LocationCallback"

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/common/api/internal/zzcm;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/location/zzn;

    invoke-direct {p3, p0, p2, p1, p2}, Lcom/google/android/gms/location/zzn;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/internal/zzchl;Lcom/google/android/gms/common/api/internal/zzci;)V

    new-instance p1, Lcom/google/android/gms/location/zzo;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zzci;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/location/zzo;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/common/api/internal/zzck;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setMockLocation(Landroid/location/Location;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzahw()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbj;->zzb(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setMockMode(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzahw()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbj;->zzb(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
