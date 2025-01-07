.class final Lcom/tencent/bugly/proguard/ee$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ee;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/dp;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic fs:Landroid/content/Context;

.field final synthetic mA:Lcom/tencent/bugly/proguard/bw;

.field final synthetic mB:Lcom/tencent/bugly/proguard/bg;

.field final synthetic mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

.field final synthetic mD:Z


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/bw;Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ee$1;->mA:Lcom/tencent/bugly/proguard/bw;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ee$1;->mB:Lcom/tencent/bugly/proguard/bg;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/ee$1;->mC:Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iput-boolean p4, p0, Lcom/tencent/bugly/proguard/ee$1;->mD:Z

    iput-object p5, p0, Lcom/tencent/bugly/proguard/ee$1;->fs:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/dp;->cI()Lcom/tencent/bugly/proguard/dp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/bugly/proguard/dp;->jb:Lcom/tencent/bugly/proguard/do;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/bugly/proguard/dp;->jb:Lcom/tencent/bugly/proguard/do;

    const/16 v2, 0x33e

    invoke-interface {v1, v2}, Lcom/tencent/bugly/proguard/do;->onUploadStart(I)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ee$1;->mA:Lcom/tencent/bugly/proguard/bw;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/bw;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ee$1;->mB:Lcom/tencent/bugly/proguard/bg;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ee$1;->mB:Lcom/tencent/bugly/proguard/bg;

    new-instance v5, Lcom/tencent/bugly/proguard/ee$1$1;

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/tencent/bugly/proguard/ee$1$1;-><init>(Lcom/tencent/bugly/proguard/ee$1;JLcom/tencent/bugly/proguard/dp;)V

    invoke-static {v4, v3, v5}, Lcom/tencent/bugly/proguard/bw;->b(Lcom/tencent/bugly/proguard/bg;Ljava/lang/String;Lcom/tencent/bugly/proguard/ba$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
