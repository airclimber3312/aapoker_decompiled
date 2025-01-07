.class public Lcom/tencent/bugly/proguard/cj;
.super Ljava/lang/Object;


# static fields
.field private static eI:Lcom/tencent/bugly/proguard/cj;


# instance fields
.field public final eH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public eJ:Z

.field public eK:Z


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/cj;->eH:Ljava/util/Set;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    iput-boolean v5, p0, Lcom/tencent/bugly/proguard/cj;->eJ:Z

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/cj;->eK:Z

    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/tencent/bugly/proguard/cj;->eK:Z

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/cj;->eJ:Z

    return-void
.end method

.method public static bi()Lcom/tencent/bugly/proguard/cj;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/cj;->eI:Lcom/tencent/bugly/proguard/cj;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/cj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/cj;->eI:Lcom/tencent/bugly/proguard/cj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/cj;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/cj;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/cj;->eI:Lcom/tencent/bugly/proguard/cj;

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
    sget-object v0, Lcom/tencent/bugly/proguard/cj;->eI:Lcom/tencent/bugly/proguard/cj;

    return-object v0
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cj;->eH:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cj;->eH:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final H(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cj;->eH:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
