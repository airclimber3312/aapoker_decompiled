.class final Lcom/google/android/gms/fitness/request/zzam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl<",
        "Lcom/google/android/gms/fitness/request/OnDataPointListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhow:Lcom/google/android/gms/fitness/data/DataPoint;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/request/zzal;Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzam;->zzhow:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzajh()V
    .locals 0

    return-void
.end method

.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/request/OnDataPointListener;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzam;->zzhow:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/request/OnDataPointListener;->onDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method
