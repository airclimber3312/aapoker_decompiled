.class final Lcom/google/android/gms/internal/zzdnq;
.super Lcom/google/android/gms/internal/zzdnt;


# instance fields
.field private synthetic zzlxw:Lcom/google/android/gms/internal/zzdnp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdnp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdnq;->zzlxw:Lcom/google/android/gms/internal/zzdnp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdnt;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdnq;->zzlxw:Lcom/google/android/gms/internal/zzdnp;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdnp;->zza(Lcom/google/android/gms/internal/zzdnp;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdnq;->zzlxw:Lcom/google/android/gms/internal/zzdnp;

    iget-object p2, p1, Lcom/google/android/gms/internal/zzdnp;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdno;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdnq;->zzlxw:Lcom/google/android/gms/internal/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdnp;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdnq;->zzlxw:Lcom/google/android/gms/internal/zzdnp;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdnp;->zzb(Lcom/google/android/gms/internal/zzdnp;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdnq;->zzlxw:Lcom/google/android/gms/internal/zzdnp;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdnp;->zzc(Lcom/google/android/gms/internal/zzdnp;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdnq;->zzlxw:Lcom/google/android/gms/internal/zzdnp;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdnp;->zzc(Lcom/google/android/gms/internal/zzdnp;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdnq;->zzlxw:Lcom/google/android/gms/internal/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdnp;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
