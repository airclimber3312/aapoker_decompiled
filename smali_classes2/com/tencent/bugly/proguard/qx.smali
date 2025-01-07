.class public final Lcom/tencent/bugly/proguard/qx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/qz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/qx$a;
    }
.end annotation


# instance fields
.field private final HD:Lcom/tencent/bugly/proguard/qz;


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "com.tencent.bugly.proguard.qw"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/qz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qx;->HD:Lcom/tencent/bugly/proguard/qz;

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, ""

    const-string v4, "init atta report fail"

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/qx;->HD:Lcom/tencent/bugly/proguard/qz;

    return-void

    :catchall_1
    move-exception v0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/qx;->HD:Lcom/tencent/bugly/proguard/qz;

    throw v0
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/qx;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IIJ)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qx;->HD:Lcom/tencent/bugly/proguard/qz;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/bugly/proguard/qz;->a(Ljava/lang/String;IIJ)V

    :cond_0
    return-void
.end method
