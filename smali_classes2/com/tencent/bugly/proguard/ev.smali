.class public Lcom/tencent/bugly/proguard/ev;
.super Ljava/lang/Object;


# static fields
.field static final ok:Ljava/lang/String; = "https://pro.bugly.qq.com"

.field private static ol:Lcom/tencent/bugly/proguard/ev;


# instance fields
.field js:Lcom/tencent/bugly/proguard/dh;

.field mContext:Landroid/content/Context;

.field mM:Lcom/tencent/bugly/proguard/am;

.field mN:Lcom/tencent/bugly/proguard/bw;

.field mO:Ljava/lang/String;

.field om:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ev;->mN:Lcom/tencent/bugly/proguard/bw;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ev;->mO:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ev;->om:Ljava/lang/String;

    return-void
.end method

.method static C(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Exit file do not exist."

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tencent/bugly/proguard/cf;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/cf;->a(Ljava/io/File;)V

    return-object v2
.end method

.method public static dR()Lcom/tencent/bugly/proguard/ev;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/ev;->ol:Lcom/tencent/bugly/proguard/ev;

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/bugly/proguard/ev;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/ev;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ev;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/ev;->ol:Lcom/tencent/bugly/proguard/ev;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/ev;->ol:Lcom/tencent/bugly/proguard/ev;

    return-object v0
.end method
