.class public final Lcom/tencent/bugly/proguard/hv$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/hv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u0007j\u0008\u0012\u0004\u0012\u00020\u0001`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/db/DBHandler$Companion;",
        "",
        "()V",
        "DB_ERROR",
        "",
        "DB_NO_OPEN",
        "TABLES",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "TAG",
        "",
        "handler",
        "Lcom/tencent/rmonitor/base/db/DBHandler;",
        "getInstance",
        "dbHelper",
        "Lcom/tencent/rmonitor/base/db/DBHelper;",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/hv$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hw;)Lcom/tencent/bugly/proguard/hv;
    .locals 2

    const-string v0, "dbHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/hv;->fu()Lcom/tencent/bugly/proguard/hv;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/hv;->fu()Lcom/tencent/bugly/proguard/hv;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/hv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/hv;-><init>(B)V

    invoke-static {v0}, Lcom/tencent/bugly/proguard/hv;->a(Lcom/tencent/bugly/proguard/hv;)V

    iput-object p1, v0, Lcom/tencent/bugly/proguard/hv;->uK:Lcom/tencent/bugly/proguard/hw;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/hv;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    return-object v0
.end method
