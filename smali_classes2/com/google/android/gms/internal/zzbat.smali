.class final Lcom/google/android/gms/internal/zzbat;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic zzfbx:Lcom/google/android/gms/internal/zzbas;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbas;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbat;->zzfbx:Lcom/google/android/gms/internal/zzbas;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbat;->zzfbx:Lcom/google/android/gms/internal/zzbas;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbas;->zzfbw:Lcom/google/android/gms/internal/zzbar;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbar;->zza(Lcom/google/android/gms/internal/zzbar;)V

    return-void
.end method
