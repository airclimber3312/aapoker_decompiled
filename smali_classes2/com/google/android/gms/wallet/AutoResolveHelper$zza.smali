.class final Lcom/google/android/gms/wallet/AutoResolveHelper$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/AutoResolveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult::",
        "Lcom/google/android/gms/wallet/AutoResolvableResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static zzlix:Landroid/os/Handler;

.field static final zzliy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/wallet/AutoResolveHelper$zza<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final zzliz:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field zzlja:I

.field private zzljb:Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;

.field private zzljc:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzlix:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzliy:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzliz:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzblr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzljc:Lcom/google/android/gms/tasks/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzljb:Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzliy:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzlja:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzlix:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzljb:Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;

    iget-object v1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzljc:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zza(Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;Lcom/google/android/gms/tasks/Task;)V

    :cond_0
    return-void
.end method

.method public static zzd(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/wallet/AutoResolveHelper$zza;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult::",
            "Lcom/google/android/gms/wallet/AutoResolvableResult;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)",
            "Lcom/google/android/gms/wallet/AutoResolveHelper$zza<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;-><init>()V

    sget-object v1, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzliz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzlja:I

    sget-object v2, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzliy:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzlix:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/wallet/AutoResolveHelper;->zzblq()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzljc:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzblr()V

    return-void
.end method

.method public final run()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzliy:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzlja:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzljb:Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzblr()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzljb:Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zzljb:Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;

    :cond_0
    return-void
.end method
