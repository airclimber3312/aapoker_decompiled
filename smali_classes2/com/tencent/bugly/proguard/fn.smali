.class public final Lcom/tencent/bugly/proguard/fn;
.super Ljava/lang/Object;


# instance fields
.field public iM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public iy:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public qY:Z

.field public qZ:Z

.field public ra:Ljava/lang/String;

.field public rb:Ljava/lang/String;

.field public rc:I

.field public rd:I

.field public re:Ljava/lang/String;

.field public rf:J

.field public rg:J

.field public rh:J

.field public ri:I

.field public rj:Ljava/lang/String;

.field public rk:Ljava/lang/String;

.field public rl:Ljava/lang/Exception;

.field public rm:Z

.field public rn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/fn;->qY:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/fn;->qZ:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/bugly/proguard/fn;->iy:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/fn;->rb:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/fn;->method:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/fn;->re:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/bugly/proguard/fn;->ri:I

    iput v0, p0, Lcom/tencent/bugly/proguard/fn;->statusCode:I

    sget-object v2, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/bugly/proguard/aq;->e(Z)Lcom/tencent/bugly/proguard/ap;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ap;->value:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/fn;->rj:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/fn;->rk:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/fn;->rl:Ljava/lang/Exception;

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/fn;->rm:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fn;->rn:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fn;->iM:Ljava/util/Map;

    return-void
.end method
