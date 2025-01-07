.class final Lcom/google/android/gms/internal/zzbas;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zzfbw:Lcom/google/android/gms/internal/zzbar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbas;->zzfbw:Lcom/google/android/gms/internal/zzbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzans()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbat;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbat;-><init>(Lcom/google/android/gms/internal/zzbas;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbas;->zzfbw:Lcom/google/android/gms/internal/zzbar;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbar;->zza(Lcom/google/android/gms/internal/zzbar;)V

    return-void
.end method
