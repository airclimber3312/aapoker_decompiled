.class final Lcom/tencent/bugly/proguard/qp$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/qn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/qp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bB(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iput-object p1, v0, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
