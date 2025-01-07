.class final Lcom/google/android/gms/internal/zzdnx;
.super Lcom/google/android/gms/internal/zzdnr;


# instance fields
.field private zzlya:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdnr;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdnx;->zzlya:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdnt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnx;->zzlya:Landroid/view/Choreographer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdnt;->zzbmg()Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
