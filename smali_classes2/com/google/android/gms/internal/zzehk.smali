.class final Lcom/google/android/gms/internal/zzehk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegf;


# instance fields
.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehk;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzqa(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Auth token changed, triggering auth token refresh"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegx;->zzc(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeew;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzeew;->zzpt(Ljava/lang/String;)V

    return-void
.end method
