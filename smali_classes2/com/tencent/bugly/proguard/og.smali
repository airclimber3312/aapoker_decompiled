.class public abstract Lcom/tencent/bugly/proguard/og;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/oi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/og$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H&J \u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H&J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0018\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0016H&J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0016H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u000cH\u0004J\u0008\u0010\u001b\u001a\u00020\u000eH\u0004J\u0008\u0010\u001c\u001a\u00020\u000eH\u0004J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001fH&J\u000e\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0004J \u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010$\u001a\u00020\u0013H&J\u0006\u0010%\u001a\u00020\u0004J\u0008\u0010&\u001a\u00020\u0013H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/provider/BaseStackProvider;",
        "Lcom/tencent/rmonitor/looper/provider/LooperStackProvider;",
        "()V",
        "isInit",
        "",
        "isStackTraceNormal",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "lagParam",
        "Lcom/tencent/rmonitor/looper/provider/LagParam;",
        "getLagParam",
        "()Lcom/tencent/rmonitor/looper/provider/LagParam;",
        "looperThread",
        "Ljava/lang/Thread;",
        "looperThreadId",
        "",
        "looperThreadName",
        "monitorInfo",
        "Lcom/tencent/rmonitor/looper/MonitorInfo;",
        "checkStackTraceNormal",
        "",
        "dispatchEnd",
        "endTime",
        "",
        "duration",
        "dispatchStart",
        "startTime",
        "getLooperThread",
        "getLooperThreadId",
        "getLooperThreadName",
        "init",
        "callback",
        "Lcom/tencent/rmonitor/looper/listener/IMonitorCallback;",
        "markStackTrace",
        "normal",
        "prepare",
        "thread",
        "release",
        "shouldSuspendBeforeGetStack",
        "stop",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Di:Lcom/tencent/bugly/proguard/og$a;


# instance fields
.field final Cp:Lcom/tencent/bugly/proguard/oh;

.field private Dd:Ljava/lang/String;

.field private De:Ljava/lang/String;

.field volatile Df:Ljava/lang/Thread;

.field private Dg:Lcom/tencent/bugly/proguard/nz;

.field private Dh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile aK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/og$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/og$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/og;->Di:Lcom/tencent/bugly/proguard/og$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/oh;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/oh;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/og;->Dh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final D(Z)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->Dh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/og;->Dh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_looper_StackProvider"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "markStackTrace, pre: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", new: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/tencent/bugly/proguard/nz;JJ)V
.end method

.method public abstract a(Lcom/tencent/bugly/proguard/oc;)Z
.end method

.method public final a(Ljava/lang/Thread;Lcom/tencent/bugly/proguard/oh;Lcom/tencent/bugly/proguard/oc;)Z
    .locals 2

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lagParam"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/og;->Dd:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/og;->De:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/og;->Df:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/oh;->a(Lcom/tencent/bugly/proguard/oh;)V

    invoke-virtual {p0, p3}, Lcom/tencent/bugly/proguard/og;->a(Lcom/tencent/bugly/proguard/oc;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/og;->aK:Z

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "RMonitor_looper_StackProvider"

    aput-object v1, p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare stack provider, isInit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/og;->aK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lagParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/og;->aK:Z

    return p1
.end method

.method public final c(JJ)V
    .locals 7

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/og;->aK:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "RMonitor_looper_StackProvider"

    const-string p3, "dispatch end fail because provide is not prepared."

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/tencent/bugly/proguard/og;->Dg:Lcom/tencent/bugly/proguard/nz;

    if-eqz v6, :cond_1

    iput-wide p3, v6, Lcom/tencent/bugly/proguard/nz;->CG:J

    move-object v0, p0

    move-object v1, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/og;->a(Lcom/tencent/bugly/proguard/nz;JJ)V

    sget-object p1, Lcom/tencent/bugly/proguard/nz;->CP:Lcom/tencent/bugly/proguard/nz$a;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/nz$a;->d(Lcom/tencent/bugly/proguard/nz;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/og;->Dg:Lcom/tencent/bugly/proguard/nz;

    return-void
.end method

.method public abstract e(Lcom/tencent/bugly/proguard/nz;)V
.end method

.method public final hX()V
    .locals 6

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/og;->aK:Z

    const-string v1, "RMonitor_looper_StackProvider"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "dispatch start fail because provide is not prepared."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->Dh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/og;->hY()V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "dispatch start fail because stack trace not normal."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->Dg:Lcom/tencent/bugly/proguard/nz;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "last msg not call dispatchEnd, key: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/bugly/proguard/nz;->CP:Lcom/tencent/bugly/proguard/nz$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/nz$a;->d(Lcom/tencent/bugly/proguard/nz;)V

    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/nz;->CP:Lcom/tencent/bugly/proguard/nz$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/nz$a;->hT()Lcom/tencent/bugly/proguard/ck;

    move-result-object v0

    const-class v1, Lcom/tencent/bugly/proguard/nz;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ck;->a(Ljava/lang/Class;)Lcom/tencent/bugly/proguard/ck$b;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/tencent/bugly/proguard/nz;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/tencent/bugly/proguard/og;->Dg:Lcom/tencent/bugly/proguard/nz;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    sget-object v1, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    invoke-static {}, Lcom/tencent/bugly/proguard/kh;->gh()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/nz;->CI:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/nz;->vs:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/og;->ia()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/bugly/proguard/nz;->vE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/og;->hZ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/nz;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/oh;->a(Lcom/tencent/bugly/proguard/oh;)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/og;->e(Lcom/tencent/bugly/proguard/nz;)V

    :cond_4
    return-void
.end method

.method public abstract hY()V
.end method

.method protected final hZ()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->Dd:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "looperThreadName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final ia()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->De:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "looperThreadId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public abstract release()V
.end method

.method public final stop()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/og;->aK:Z

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/og;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/og;->Df:Ljava/lang/Thread;

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper_StackProvider"

    const-string v2, "stop"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void
.end method
