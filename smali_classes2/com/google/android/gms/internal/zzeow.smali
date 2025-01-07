.class final Lcom/google/android/gms/internal/zzeow;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic zznrd:Lcom/google/android/gms/internal/zzeou;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzeou;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeow;->zznrd:Lcom/google/android/gms/internal/zzeou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzeou;Lcom/google/android/gms/internal/zzeov;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeow;-><init>(Lcom/google/android/gms/internal/zzeou;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/zzejl;->zzniu:Lcom/google/android/gms/internal/zzejl;

    const-string v1, "FirebaseDatabaseWorker"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzejl;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzejl;->zza(Ljava/lang/Thread;Z)V

    new-instance v1, Lcom/google/android/gms/internal/zzeox;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzeox;-><init>(Lcom/google/android/gms/internal/zzeow;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzejl;->zza(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method
