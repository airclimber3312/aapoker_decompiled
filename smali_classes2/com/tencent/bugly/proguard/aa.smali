.class public final Lcom/tencent/bugly/proguard/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/aa$a;
    }
.end annotation


# instance fields
.field private final au:Ljava/lang/String;

.field public av:Lcom/tencent/bugly/proguard/v;

.field private aw:Lcom/tencent/bugly/proguard/t;

.field private ax:Z

.field private ay:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aa;->av:Lcom/tencent/bugly/proguard/v;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aa;->aw:Lcom/tencent/bugly/proguard/t;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->ax:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->ay:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aa;->au:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final B()Lcom/tencent/bugly/proguard/t;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->aw:Lcom/tencent/bugly/proguard/t;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->aw:Lcom/tencent/bugly/proguard/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/x;-><init>(Lcom/tencent/bugly/proguard/w;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aa;->aw:Lcom/tencent/bugly/proguard/t;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->aw:Lcom/tencent/bugly/proguard/t;

    return-object v0
.end method

.method public final a(Lcom/tencent/bugly/proguard/v;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/aa;->av:Lcom/tencent/bugly/proguard/v;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/aa;->aw:Lcom/tencent/bugly/proguard/t;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->ax:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/tencent/bugly/proguard/t;->commit()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/aa;->ax:Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->av:Lcom/tencent/bugly/proguard/v;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/aa;->ax:Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/aa;->ay:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/v;->A()V

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/aa;->ay:Z

    :cond_2
    iget-object v2, p0, Lcom/tencent/bugly/proguard/aa;->au:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return v1
.end method
