.class public Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;
.super Ljava/lang/Object;
.source "EMWrapperThreadUtil.java"


# static fields
.field private static asyncThreadPool:Ljava/util/concurrent/ExecutorService;

.field private static mainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->asyncThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 12
    sget-object v0, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->asyncThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static mainThreadExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 16
    sget-object v0, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
