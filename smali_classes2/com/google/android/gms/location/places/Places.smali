.class public Lcom/google/android/gms/location/places/Places;
.super Ljava/lang/Object;


# static fields
.field public static final GEO_DATA_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/location/places/PlacesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

.field public static final PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/location/places/PlacesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PlaceDetectionApi:Lcom/google/android/gms/location/places/PlaceDetectionApi;

.field private static zziwc:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/location/places/internal/zzo;",
            ">;"
        }
    .end annotation
.end field

.field private static zziwd:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/location/places/internal/zzac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->zziwc:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->zziwd:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/location/places/internal/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/location/places/internal/zzq;-><init>()V

    sget-object v2, Lcom/google/android/gms/location/places/Places;->zziwc:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "Places.GEO_DATA_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/location/places/internal/zzae;

    invoke-direct {v1}, Lcom/google/android/gms/location/places/internal/zzae;-><init>()V

    sget-object v2, Lcom/google/android/gms/location/places/Places;->zziwd:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "Places.PLACE_DETECTION_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->PlaceDetectionApi:Lcom/google/android/gms/location/places/PlaceDetectionApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeoDataClient(Landroid/app/Activity;)Lcom/google/android/gms/location/places/GeoDataClient;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/Places;->getGeoDataClient(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/GeoDataClient;

    move-result-object p0

    return-object p0
.end method

.method public static getGeoDataClient(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/GeoDataClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/GeoDataClient;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/GeoDataClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0
.end method

.method public static getGeoDataClient(Landroid/content/Context;)Lcom/google/android/gms/location/places/GeoDataClient;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/Places;->getGeoDataClient(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/GeoDataClient;

    move-result-object p0

    return-object p0
.end method

.method public static getGeoDataClient(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/GeoDataClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/GeoDataClient;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/GeoDataClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0
.end method

.method public static getPlaceDetectionClient(Landroid/app/Activity;)Lcom/google/android/gms/location/places/PlaceDetectionClient;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/Places;->getPlaceDetectionClient(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/PlaceDetectionClient;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaceDetectionClient(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/PlaceDetectionClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/PlaceDetectionClient;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/PlaceDetectionClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0
.end method

.method public static getPlaceDetectionClient(Landroid/content/Context;)Lcom/google/android/gms/location/places/PlaceDetectionClient;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/Places;->getPlaceDetectionClient(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/PlaceDetectionClient;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaceDetectionClient(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/PlaceDetectionClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/PlaceDetectionClient;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/PlaceDetectionClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0
.end method
