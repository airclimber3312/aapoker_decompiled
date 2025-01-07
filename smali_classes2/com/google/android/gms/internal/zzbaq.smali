.class final Lcom/google/android/gms/internal/zzbaq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfbt:Lcom/google/android/gms/internal/zzbao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbaq;->zzfbt:Lcom/google/android/gms/internal/zzbao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaq;->zzfbt:Lcom/google/android/gms/internal/zzbao;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zza(Lcom/google/android/gms/internal/zzban;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaq;->zzfbt:Lcom/google/android/gms/internal/zzbao;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zzb(Lcom/google/android/gms/internal/zzban;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbaq;->zzfbt:Lcom/google/android/gms/internal/zzbao;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaq;->zzfbt:Lcom/google/android/gms/internal/zzbao;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zzc(Lcom/google/android/gms/internal/zzban;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaq;->zzfbt:Lcom/google/android/gms/internal/zzbao;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zzc(Lcom/google/android/gms/internal/zzban;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaq;->zzfbt:Lcom/google/android/gms/internal/zzbao;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zzd(Lcom/google/android/gms/internal/zzban;)V

    :cond_1
    return-void
.end method
