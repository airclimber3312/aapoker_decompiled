.class public Lcom/google/android/gms/location/places/AutocompletePredictionBufferResponse;
.super Lcom/google/android/gms/common/api/zzb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzb<",
        "Lcom/google/android/gms/location/places/AutocompletePrediction;",
        "Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Response;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
