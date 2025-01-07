.class public final Lcom/tencent/bugly/proguard/nz;
.super Lcom/tencent/bugly/proguard/ck$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/nz$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u000f\u0018\u0000 D2\u00020\u0001:\u0001DB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u00101\u001a\u0002022\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0006\u00103\u001a\u00020\u0017J\u0006\u00104\u001a\u00020\u0000J\u0006\u00105\u001a\u000206J\u0006\u00107\u001a\u00020\u0004J\u0006\u00108\u001a\u00020\u000bJ\u0006\u00109\u001a\u00020\u0017J\u0008\u0010:\u001a\u000202H\u0016J\u000e\u0010;\u001a\u0002022\u0006\u0010<\u001a\u00020\u0004J\u000e\u0010=\u001a\u0002022\u0006\u0010>\u001a\u00020\u000bJ\u000e\u0010?\u001a\u0002022\u0006\u0010@\u001a\u00020\u0004J\u000e\u0010A\u001a\u0002022\u0006\u0010B\u001a\u00020\u0017J\u0008\u0010C\u001a\u00020&H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\"\u0004\u0008\u000f\u0010\u0008R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u000e\u0010$\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010(\"\u0004\u0008-\u0010*R\u001a\u0010.\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010(\"\u0004\u00080\u0010*\u00a8\u0006E"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/MonitorInfo;",
        "Lcom/tencent/bugly/common/utils/RecyclablePool$Recyclable;",
        "()V",
        "cacheRealStackTime",
        "",
        "getCacheRealStackTime",
        "()J",
        "setCacheRealStackTime",
        "(J)V",
        "collectStackMsgCostInUs",
        "collectStackMsgCount",
        "",
        "collectStackMsgDelayInMs",
        "duration",
        "getDuration",
        "setDuration",
        "fullStack",
        "Lorg/json/JSONObject;",
        "getFullStack",
        "()Lorg/json/JSONObject;",
        "setFullStack",
        "(Lorg/json/JSONObject;)V",
        "isAppInForeground",
        "",
        "()Z",
        "setAppInForeground",
        "(Z)V",
        "isDetectedLongLag",
        "setDetectedLongLag",
        "lagParam",
        "Lcom/tencent/rmonitor/looper/provider/LagParam;",
        "getLagParam",
        "()Lcom/tencent/rmonitor/looper/provider/LagParam;",
        "lastStackRequestTime",
        "getLastStackRequestTime",
        "setLastStackRequestTime",
        "quickTraceFlag",
        "scene",
        "",
        "getScene",
        "()Ljava/lang/String;",
        "setScene",
        "(Ljava/lang/String;)V",
        "threadId",
        "getThreadId",
        "setThreadId",
        "threadName",
        "getThreadName",
        "setThreadName",
        "addCollectStackMsgSample",
        "",
        "checkUseFileToTransStacks",
        "copy",
        "getAvgCollectStackMsgCost",
        "",
        "getAvgCollectStackMsgDelay",
        "getCollectStackMsgCount",
        "getQuickTraceFlag",
        "reset",
        "setCollectStackMsgCostInUs",
        "cost",
        "setCollectStackMsgCount",
        "count",
        "setCollectStackMsgDelayInMs",
        "delay",
        "setQuickTraceFlag",
        "flag",
        "toString",
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
.field private static final CO:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/tencent/bugly/proguard/ck;",
            ">;"
        }
    .end annotation
.end field

.field public static final CP:Lcom/tencent/bugly/proguard/nz$a;


# instance fields
.field public volatile CE:J

.field private volatile CF:J

.field public volatile CG:J

.field public volatile CH:Lorg/json/JSONObject;

.field public volatile CI:Z

.field public CJ:Z

.field public CK:J

.field public CL:J

.field public CM:I

.field public CN:Z

.field public final Cp:Lcom/tencent/bugly/proguard/oh;

.field public volatile lf:Ljava/lang/String;

.field public volatile vE:Ljava/lang/String;

.field public volatile vs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/nz$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/nz$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/nz;->CP:Lcom/tencent/bugly/proguard/nz$a;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/nz;->CO:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ck$b;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nz;->vE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    new-instance v0, Lcom/tencent/bugly/proguard/oh;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/oh;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nz;->Cp:Lcom/tencent/bugly/proguard/oh;

    return-void
.end method

.method public static final synthetic hS()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/nz;->CO:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public final hQ()Lcom/tencent/bugly/proguard/nz;
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/nz;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/nz;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->vE:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/nz;->vE:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->vs:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/nz;->vs:Ljava/lang/String;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CE:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CF:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/nz;->CF:J

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CG:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/nz;->CG:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/nz;->CI:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/nz;->CI:Z

    iget-object v1, v0, Lcom/tencent/bugly/proguard/nz;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/nz;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/oh;->a(Lcom/tencent/bugly/proguard/oh;)V

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CK:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/nz;->CK:J

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CL:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/nz;->CL:J

    iget v1, p0, Lcom/tencent/bugly/proguard/nz;->CM:I

    iput v1, v0, Lcom/tencent/bugly/proguard/nz;->CM:I

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/nz;->CN:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/nz;->CN:Z

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/nz;->CJ:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/nz;->CJ:Z

    return-object v0
.end method

.method public final hR()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x80000

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method public final reset()V
    .locals 4

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nz;->vE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nz;->vs:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CE:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CF:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CG:J

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nz;->CI:Z

    iget-object v3, p0, Lcom/tencent/bugly/proguard/nz;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/oh;->reset()V

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CK:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CL:J

    iput v0, p0, Lcom/tencent/bugly/proguard/nz;->CM:I

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nz;->CN:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nz;->CJ:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MonitorInfo(threadId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->vE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", threadName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->vs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastStackRequestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cacheRealStackTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CF:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CG:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isAppInForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/nz;->CI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lagParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nz;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collectStackMsgDelayInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CK:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", collectStackMsgCostInUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", collectStackMsgCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/nz;->CM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quickTraceFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/nz;->CN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDetectedLongLag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/nz;->CJ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
