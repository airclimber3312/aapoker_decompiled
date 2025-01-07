.class final Lcom/google/android/gms/internal/zzede;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmpo:Lcom/google/firebase/internal/zzc;

.field private synthetic zzmxs:Lcom/google/android/gms/internal/zzedd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedd;Lcom/google/firebase/internal/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzede;->zzmxs:Lcom/google/android/gms/internal/zzedd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzede;->zzmpo:Lcom/google/firebase/internal/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzede;->zzmxs:Lcom/google/android/gms/internal/zzedd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzedd;->zzmxq:Lcom/google/android/gms/internal/zzegf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzede;->zzmpo:Lcom/google/firebase/internal/zzc;

    invoke-virtual {v1}, Lcom/google/firebase/internal/zzc;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegf;->zzqa(Ljava/lang/String;)V

    return-void
.end method
