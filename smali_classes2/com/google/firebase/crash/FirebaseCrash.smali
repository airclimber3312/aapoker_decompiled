.class public Lcom/google/firebase/crash/FirebaseCrash;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crash/FirebaseCrash$zzc;,
        Lcom/google/firebase/crash/FirebaseCrash$zzb;,
        Lcom/google/firebase/crash/FirebaseCrash$zza;
    }
.end annotation


# static fields
.field private static volatile zzmum:Lcom/google/firebase/crash/FirebaseCrash;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzmpb:Lcom/google/firebase/FirebaseApp;

.field private final zzmun:Ljava/util/concurrent/ExecutorService;

.field private final zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

.field private final zzmup:Ljava/util/concurrent/CountDownLatch;

.field private zzmuq:Lcom/google/android/gms/internal/zzecy;


# direct methods
.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmup:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmpb:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/google/firebase/crash/FirebaseCrash$zzb;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/firebase/crash/FirebaseCrash$zzb;-><init>(Lcom/google/firebase/crash/zza;)V

    iput-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    return-void
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/crash/FirebaseCrash;
    .locals 9

    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzmum:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/firebase/crash/FirebaseCrash;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->zzmum:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x2710

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v2, Lcom/google/firebase/crash/FirebaseCrash;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/crash/FirebaseCrash;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ExecutorService;)V

    new-instance v4, Lcom/google/firebase/crash/zzc;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/google/firebase/crash/zzc;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    new-instance p0, Lcom/google/firebase/crash/FirebaseCrash$zzc;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/google/firebase/crash/FirebaseCrash$zzc;-><init>(Lcom/google/firebase/crash/FirebaseCrash;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v8, Lcom/google/firebase/crash/zzb;

    invoke-direct {v8, v2}, Lcom/google/firebase/crash/zzb;-><init>(Lcom/google/firebase/crash/FirebaseCrash;)V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/crash/zzd;

    invoke-direct {v1, v4}, Lcom/google/firebase/crash/zzd;-><init>(Lcom/google/firebase/crash/zzc;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    new-instance v1, Lcom/google/firebase/crash/zze;

    const-wide/16 v6, 0x2710

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/crash/zze;-><init>(Lcom/google/firebase/crash/zzc;Ljava/util/concurrent/Future;JLcom/google/firebase/crash/zzg;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p0, v2, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/crash/zza;

    invoke-direct {v1, v2}, Lcom/google/firebase/crash/zza;-><init>(Lcom/google/firebase/crash/FirebaseCrash;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sput-object v2, Lcom/google/firebase/crash/FirebaseCrash;->zzmum:Lcom/google/firebase/crash/FirebaseCrash;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmum:Lcom/google/firebase/crash/FirebaseCrash;

    return-object p0
.end method

.method public static isCrashCollectionEnabled()Z
    .locals 1

    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuu()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuw()Z

    move-result v0

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuu()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzpk(Ljava/lang/String;)V

    return-void
.end method

.method public static logcat(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuu()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, p2}, Lcom/google/firebase/crash/FirebaseCrash;->zzpk(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static report(Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuu()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuv()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzecm;

    iget-object v3, v0, Lcom/google/firebase/crash/FirebaseCrash;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    iget-object v0, v0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuq:Lcom/google/android/gms/internal/zzecy;

    invoke-direct {v2, v3, v4, p0, v0}, Lcom/google/android/gms/internal/zzecm;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zzecy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method public static setCrashCollectionEnabled(Z)V
    .locals 4

    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuu()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuv()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzecq;

    iget-object v3, v0, Lcom/google/firebase/crash/FirebaseCrash;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    invoke-direct {v2, v3, v0, p0}, Lcom/google/android/gms/internal/zzecq;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/crash/FirebaseCrash;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbut()V

    return-void
.end method

.method private final zzbut()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmup:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FirebaseCrash"

    const-string v2, "Failed waiting for crash api to load."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static zzbuu()Lcom/google/firebase/crash/FirebaseCrash;
    .locals 1

    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzmum:Lcom/google/firebase/crash/FirebaseCrash;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->zzmum:Lcom/google/firebase/crash/FirebaseCrash;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    return-object v0
.end method

.method private final zzbuw()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbut()V

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    invoke-virtual {v0}, Lcom/google/firebase/crash/FirebaseCrash$zzb;->zzbux()Lcom/google/android/gms/internal/zzect;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzect;->zzbuw()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    return v1
.end method

.method private final zzpk(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuv()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzecn;

    iget-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzecn;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/zzect;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecy;->zzez(Landroid/content/Context;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuq:Lcom/google/android/gms/internal/zzecy;

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    invoke-static {v0, p1}, Lcom/google/firebase/crash/FirebaseCrash$zzb;->zza(Lcom/google/firebase/crash/FirebaseCrash$zzb;Lcom/google/android/gms/internal/zzect;)V

    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuq:Lcom/google/android/gms/internal/zzecy;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuv()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuq:Lcom/google/android/gms/internal/zzecy;

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzecy;->zza(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    const-string p1, "FirebaseCrash"

    const-string v0, "Firebase Analytics Listener for Firebase Crash is initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmup:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final zzbuv()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method final zzcp(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuv()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzecp;

    iget-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzecp;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method final zzi(Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->zzbuv()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmun:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzeco;

    iget-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuo:Lcom/google/firebase/crash/FirebaseCrash$zzb;

    iget-object v4, p0, Lcom/google/firebase/crash/FirebaseCrash;->zzmuq:Lcom/google/android/gms/internal/zzecy;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/zzeco;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zzecy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
