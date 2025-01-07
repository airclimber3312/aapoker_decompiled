.class final Lcom/google/android/gms/internal/zzbod;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    const-string v0, "DriveContentsImpl"

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzboa;->zzaqn()Lcom/google/android/gms/common/internal/zzal;

    move-result-object p1

    const-string v1, "Error discarding contents"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/zzal;->zzw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzboa;->zzaqn()Lcom/google/android/gms/common/internal/zzal;

    move-result-object p1

    const-string v1, "Contents discarded"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/zzal;->zzu(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
