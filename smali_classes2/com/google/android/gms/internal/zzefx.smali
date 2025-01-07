.class final Lcom/google/android/gms/internal/zzefx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzncm:Lcom/google/android/gms/internal/zzefu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefx;->zzncm:Lcom/google/android/gms/internal/zzefu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefx;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefx;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "closed"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefx;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zze(Lcom/google/android/gms/internal/zzefp;)V

    return-void
.end method
