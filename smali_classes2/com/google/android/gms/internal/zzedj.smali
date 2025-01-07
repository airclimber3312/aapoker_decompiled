.class final Lcom/google/android/gms/internal/zzedj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$zza;


# instance fields
.field private synthetic zzmxx:Lcom/google/android/gms/internal/zzeew;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedg;Lcom/google/android/gms/internal/zzeew;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedj;->zzmxx:Lcom/google/android/gms/internal/zzeew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbj(Z)V
    .locals 1

    const-string v0, "app_in_background"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzedj;->zzmxx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzeew;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzedj;->zzmxx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzeew;->resume(Ljava/lang/String;)V

    return-void
.end method
