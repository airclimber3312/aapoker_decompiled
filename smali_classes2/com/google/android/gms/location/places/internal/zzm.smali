.class final Lcom/google/android/gms/location/places/internal/zzm;
.super Lcom/google/android/gms/location/places/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzm$zza<",
        "Lcom/google/android/gms/location/places/internal/zzo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$query:Ljava/lang/String;

.field private synthetic zzixh:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private synthetic zzixi:I

.field private synthetic zzixj:Lcom/google/android/gms/location/places/AutocompleteFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzh;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzm;->val$query:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzixh:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p6, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzixi:I

    iput-object p7, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzixj:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzm$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzo;

    new-instance v1, Lcom/google/android/gms/location/places/zzm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzm;-><init>(Lcom/google/android/gms/location/places/zzm$zza;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzm;->val$query:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzixh:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzixi:I

    iget-object v5, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzixj:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzo;->zza(Lcom/google/android/gms/location/places/zzm;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/AutocompleteFilter;)V

    return-void
.end method
