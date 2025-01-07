.class final Lcom/google/android/gms/internal/zzefr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznck:Lcom/google/android/gms/internal/zzefp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefr;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefr;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzg(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzeft;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefr;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzg(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzeft;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeft;->zzpy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefr;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzc(Lcom/google/android/gms/internal/zzefp;)V

    :cond_0
    return-void
.end method
