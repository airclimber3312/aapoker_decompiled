.class public final Lcom/tencent/bugly/proguard/bh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/bh$b;,
        Lcom/tencent/bugly/proguard/bh$c;,
        Lcom/tencent/bugly/proguard/bh$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 )2\u00020\u0001:\u0003)*+B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\'\u001a\u00020(H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006,"
    }
    d2 = {
        "Lcom/tencent/bugly/common/reporter/data/ReportStrategy;",
        "",
        "()V",
        "alreadyRetryTimes",
        "",
        "getAlreadyRetryTimes",
        "()I",
        "setAlreadyRetryTimes",
        "(I)V",
        "connectTimeout",
        "getConnectTimeout",
        "setConnectTimeout",
        "needCache",
        "",
        "getNeedCache",
        "()Z",
        "setNeedCache",
        "(Z)V",
        "priority",
        "getPriority",
        "setPriority",
        "readTimeout",
        "getReadTimeout",
        "setReadTimeout",
        "retryStrategy",
        "Lcom/tencent/bugly/common/reporter/data/ReportStrategy$RetryStrategy;",
        "getRetryStrategy",
        "()Lcom/tencent/bugly/common/reporter/data/ReportStrategy$RetryStrategy;",
        "setRetryStrategy",
        "(Lcom/tencent/bugly/common/reporter/data/ReportStrategy$RetryStrategy;)V",
        "retryTimes",
        "getRetryTimes",
        "setRetryTimes",
        "uploadStrategy",
        "Lcom/tencent/bugly/common/reporter/data/ReportStrategy$UploadStrategy;",
        "getUploadStrategy",
        "()Lcom/tencent/bugly/common/reporter/data/ReportStrategy$UploadStrategy;",
        "setUploadStrategy",
        "(Lcom/tencent/bugly/common/reporter/data/ReportStrategy$UploadStrategy;)V",
        "toString",
        "",
        "Companion",
        "RetryStrategy",
        "UploadStrategy",
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
.field public static final dj:Lcom/tencent/bugly/proguard/bh$a;


# instance fields
.field public dc:Z

.field public dd:I

.field public de:I

.field public df:I

.field public dg:Lcom/tencent/bugly/proguard/bh$b;

.field public dh:Lcom/tencent/bugly/proguard/bh$c;

.field public di:I

.field public priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/bh$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/bh$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/bh;->dj:Lcom/tencent/bugly/proguard/bh$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bh;->dc:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/bugly/proguard/bh;->priority:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/tencent/bugly/proguard/bh;->dd:I

    iput v0, p0, Lcom/tencent/bugly/proguard/bh;->de:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/bugly/proguard/bh;->df:I

    sget-object v0, Lcom/tencent/bugly/proguard/bh$b;->dl:Lcom/tencent/bugly/proguard/bh$b;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bh;->dg:Lcom/tencent/bugly/proguard/bh$b;

    sget-object v0, Lcom/tencent/bugly/proguard/bh$c;->dn:Lcom/tencent/bugly/proguard/bh$c;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bh;->dh:Lcom/tencent/bugly/proguard/bh$c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/bh$c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/bh;->dh:Lcom/tencent/bugly/proguard/bh$c;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportStrategy(needCache="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/bh;->dc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/bh;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/bh;->dd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/bh;->de:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/bh;->df:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/bh;->dg:Lcom/tencent/bugly/proguard/bh$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/bh;->dh:Lcom/tencent/bugly/proguard/bh$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alreadyRetryTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/bh;->di:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
