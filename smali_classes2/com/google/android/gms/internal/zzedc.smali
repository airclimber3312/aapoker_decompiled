.class final Lcom/google/android/gms/internal/zzedc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/GetTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmxp:Lcom/google/android/gms/internal/zzege;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeda;Lcom/google/android/gms/internal/zzege;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedc;->zzmxp:Lcom/google/android/gms/internal/zzege;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmxp:Lcom/google/android/gms/internal/zzege;

    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzege;->zzpr(Ljava/lang/String;)V

    return-void
.end method
