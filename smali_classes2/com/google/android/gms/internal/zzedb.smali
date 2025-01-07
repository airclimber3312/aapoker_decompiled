.class final Lcom/google/android/gms/internal/zzedb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zzmxp:Lcom/google/android/gms/internal/zzege;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeda;Lcom/google/android/gms/internal/zzege;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedb;->zzmxp:Lcom/google/android/gms/internal/zzege;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    instance-of v0, p1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzedb;->zzmxp:Lcom/google/android/gms/internal/zzege;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzege;->zzpr(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedb;->zzmxp:Lcom/google/android/gms/internal/zzege;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzege;->onError(Ljava/lang/String;)V

    return-void
.end method
