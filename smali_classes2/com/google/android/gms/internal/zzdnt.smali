.class public abstract Lcom/google/android/gms/internal/zzdnt;
.super Ljava/lang/Object;


# instance fields
.field private zzjhk:Ljava/lang/Runnable;

.field private zzlxy:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFrame(J)V
.end method

.method final zzbmg()Landroid/view/Choreographer$FrameCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnt;->zzlxy:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdnu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdnu;-><init>(Lcom/google/android/gms/internal/zzdnt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdnt;->zzlxy:Landroid/view/Choreographer$FrameCallback;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnt;->zzlxy:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method final zzbmh()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnt;->zzjhk:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdnv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdnv;-><init>(Lcom/google/android/gms/internal/zzdnt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdnt;->zzjhk:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnt;->zzjhk:Ljava/lang/Runnable;

    return-object v0
.end method
