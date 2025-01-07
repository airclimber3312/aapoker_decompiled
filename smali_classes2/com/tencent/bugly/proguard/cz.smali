.class public final Lcom/tencent/bugly/proguard/cz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/cz$a;
    }
.end annotation


# static fields
.field private static fM:Ljava/lang/Object;

.field private static gk:Lcom/tencent/bugly/proguard/cz;


# instance fields
.field gl:Z

.field public gm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/cz$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/cz;->fM:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/cz;->gl:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/cz;->gm:Ljava/util/List;

    return-void
.end method

.method public static bA()Lcom/tencent/bugly/proguard/cz;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/cz;->gk:Lcom/tencent/bugly/proguard/cz;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/cz;->fM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/cz;->gk:Lcom/tencent/bugly/proguard/cz;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/cz;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/cz;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/cz;->gk:Lcom/tencent/bugly/proguard/cz;

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
    sget-object v0, Lcom/tencent/bugly/proguard/cz;->gk:Lcom/tencent/bugly/proguard/cz;

    return-object v0
.end method
