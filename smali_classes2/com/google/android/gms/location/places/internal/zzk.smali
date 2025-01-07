.class final Lcom/google/android/gms/location/places/internal/zzk;
.super Lcom/google/android/gms/location/places/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zze<",
        "Lcom/google/android/gms/location/places/internal/zzo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzixc:Ljava/lang/String;

.field private synthetic zzixd:I

.field private synthetic zzixe:I

.field private synthetic zzixf:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzh;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;III)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzixc:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzixd:I

    iput p6, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzixe:I

    iput p7, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzixf:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zze;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v1, Lcom/google/android/gms/location/places/zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzd;-><init>(Lcom/google/android/gms/location/places/zze;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzixc:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzixd:I

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzixe:I

    iget v5, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzixf:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzo;->zza(Lcom/google/android/gms/location/places/zzd;Ljava/lang/String;III)V

    return-void
.end method
