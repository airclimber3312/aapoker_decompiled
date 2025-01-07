.class public final Lcom/tencent/bugly/proguard/hg;
.super Ljava/lang/Object;


# instance fields
.field final ui:Z

.field final uj:Lcom/tencent/bugly/proguard/hh;

.field final uk:Lcom/tencent/bugly/proguard/hi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/hg;->ui:Z

    new-instance v0, Lcom/tencent/bugly/proguard/hh;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hh;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hg;->uj:Lcom/tencent/bugly/proguard/hh;

    new-instance v0, Lcom/tencent/bugly/proguard/hi;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hi;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/hh;Lcom/tencent/bugly/proguard/hi;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/tencent/bugly/proguard/hg;->ui:Z

    new-instance p3, Lcom/tencent/bugly/proguard/hh;

    invoke-direct {p3}, Lcom/tencent/bugly/proguard/hh;-><init>()V

    iput-object p3, p0, Lcom/tencent/bugly/proguard/hg;->uj:Lcom/tencent/bugly/proguard/hh;

    invoke-virtual {p3, p1}, Lcom/tencent/bugly/proguard/hh;->a(Lcom/tencent/bugly/proguard/hh;)V

    new-instance p1, Lcom/tencent/bugly/proguard/hi;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/hi;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    iput-object p3, p1, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    iget p3, p2, Lcom/tencent/bugly/proguard/hi;->status:I

    iput p3, p1, Lcom/tencent/bugly/proguard/hi;->status:I

    iget-object p3, p2, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    iput-object p3, p1, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    iget-wide v0, p2, Lcom/tencent/bugly/proguard/hi;->uo:J

    iput-wide v0, p1, Lcom/tencent/bugly/proguard/hi;->uo:J

    iget-wide v0, p2, Lcom/tencent/bugly/proguard/hi;->up:J

    iput-wide v0, p1, Lcom/tencent/bugly/proguard/hi;->up:J

    iget-wide p2, p2, Lcom/tencent/bugly/proguard/hi;->uq:J

    iput-wide p2, p1, Lcom/tencent/bugly/proguard/hi;->uq:J

    :cond_0
    return-void
.end method
