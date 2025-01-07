.class public Lcom/tendcloud/tenddata/game/cj;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bs;->a()Lcom/tendcloud/tenddata/game/bs;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cj;->a()Lcom/tendcloud/tenddata/game/cj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bs;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 39
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cj;
    .locals 2

    .line 23
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Lcom/tendcloud/tenddata/game/cj;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/tendcloud/tenddata/game/cj;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/cj;->a:Lcom/tendcloud/tenddata/game/cj;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cj;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/cj;->a:Lcom/tendcloud/tenddata/game/cj;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Lcom/tendcloud/tenddata/game/cj;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 58
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/game/ck;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/ck;-><init>(Lcom/tendcloud/tenddata/game/cj;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onTDEBEventCommonEnvironment(Lcom/tendcloud/tenddata/game/di;)V
    .locals 1

    .line 45
    :try_start_0
    iget p1, p1, Lcom/tendcloud/tenddata/game/di;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/cj;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
