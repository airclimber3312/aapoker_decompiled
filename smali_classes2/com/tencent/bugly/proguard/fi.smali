.class public final Lcom/tencent/bugly/proguard/fi;
.super Ljava/lang/Object;


# instance fields
.field public qK:Ljava/lang/String;

.field public qL:I

.field public qM:I

.field public qN:I

.field public qO:I

.field public qP:J

.field public qQ:Ljava/lang/String;

.field public qR:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "auto"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/fi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "auto"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    iget v0, p1, Lcom/tencent/bugly/proguard/fi;->qL:I

    iput v0, p0, Lcom/tencent/bugly/proguard/fi;->qL:I

    iget v0, p1, Lcom/tencent/bugly/proguard/fi;->qM:I

    iput v0, p0, Lcom/tencent/bugly/proguard/fi;->qM:I

    iget v0, p1, Lcom/tencent/bugly/proguard/fi;->qN:I

    iput v0, p0, Lcom/tencent/bugly/proguard/fi;->qN:I

    iget v0, p1, Lcom/tencent/bugly/proguard/fi;->qO:I

    iput v0, p0, Lcom/tencent/bugly/proguard/fi;->qO:I

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/fi;->qP:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/fi;->qP:J

    iget-object p1, p1, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    return-void
.end method
