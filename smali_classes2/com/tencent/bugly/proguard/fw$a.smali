.class final Lcom/tencent/bugly/proguard/fw$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic rM:Lcom/tencent/bugly/proguard/fw;


# direct methods
.method private constructor <init>(Lcom/tencent/bugly/proguard/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/fw$a;->rM:Lcom/tencent/bugly/proguard/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/bugly/proguard/fw;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/fw$a;-><init>(Lcom/tencent/bugly/proguard/fw;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/fw$a;->rM:Lcom/tencent/bugly/proguard/fw;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/fw;->rL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setStage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/fw$a;->rM:Lcom/tencent/bugly/proguard/fw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/fw;->rK:Z

    return-void
.end method
