.class final Lcom/tencent/bugly/proguard/el$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/el;->updateStateAndHandleAnr()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nu:Lcom/tencent/bugly/proguard/el;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/el;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/el$3;->nu:Lcom/tencent/bugly/proguard/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el$3;->nu:Lcom/tencent/bugly/proguard/el;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/el;->c(Lcom/tencent/bugly/proguard/el;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Found foreground anr, resend sigquit immediately."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->resendSigquit()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el$3;->nu:Lcom/tencent/bugly/proguard/el;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/el;->d(Lcom/tencent/bugly/proguard/el;)V

    const-string v0, "Finish handling one anr."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Found background anr, resend sigquit later."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el$3;->nu:Lcom/tencent/bugly/proguard/el;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/el;->d(Lcom/tencent/bugly/proguard/el;)V

    const-string v0, "Finish handling one anr, now resend sigquit."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->resendSigquit()V

    return-void
.end method
