.class final Lcom/google/android/gms/internal/zzazp;
.super Lcom/google/android/gms/internal/zzff;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzff<",
        "Lcom/google/android/gms/awareness/snapshot/PlacesResult;",
        "Lcom/google/android/gms/internal/zzazy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaze;Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzff;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzazy;

    new-instance v0, Lcom/google/android/gms/internal/zzazq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzazq;-><init>(Lcom/google/android/gms/internal/zzazp;Lcom/google/android/gms/internal/zzazy;)V

    return-object v0
.end method
