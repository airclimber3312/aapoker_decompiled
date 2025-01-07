.class public final Lcom/tencent/bugly/proguard/eo;
.super Ljava/lang/Object;


# instance fields
.field public fv:J

.field public lf:Ljava/lang/String;

.field public nA:Z

.field public nz:J

.field stackTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/eo;->lf:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/eo;->stackTrace:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/eo;->nA:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/eo;->stackTrace:Ljava/lang/String;

    iput-wide p2, p0, Lcom/tencent/bugly/proguard/eo;->fv:J

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/eo;->nA:Z

    return-void
.end method
