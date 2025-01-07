.class public Lcom/google/android/gms/awareness/snapshot/BeaconStateResponse;
.super Lcom/google/android/gms/common/api/Response;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Response<",
        "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeaconState()Lcom/google/android/gms/awareness/state/BeaconState;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Response;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;->getBeaconState()Lcom/google/android/gms/awareness/state/BeaconState;

    move-result-object v0

    return-object v0
.end method
