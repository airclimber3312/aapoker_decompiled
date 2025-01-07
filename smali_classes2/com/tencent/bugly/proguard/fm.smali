.class public Lcom/tencent/bugly/proguard/fm;
.super Ljava/lang/Object;


# static fields
.field static volatile qT:Z = false

.field private static volatile qU:Lcom/tencent/bugly/proguard/fm; = null

.field private static qV:Z = false


# instance fields
.field public final qW:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tencent/bugly/proguard/fn;",
            ">;"
        }
    .end annotation
.end field

.field public final qX:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tencent/bugly/proguard/fn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fm;->qW:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fm;->qX:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static ei()Lcom/tencent/bugly/proguard/fm;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/fm;->qU:Lcom/tencent/bugly/proguard/fm;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/fm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/fm;->qU:Lcom/tencent/bugly/proguard/fm;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/fm;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/fm;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/fm;->qU:Lcom/tencent/bugly/proguard/fm;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    sput-boolean v0, Lcom/tencent/bugly/proguard/fm;->qV:Z

    sget-object v0, Lcom/tencent/bugly/proguard/fm;->qU:Lcom/tencent/bugly/proguard/fm;

    return-object v0
.end method
