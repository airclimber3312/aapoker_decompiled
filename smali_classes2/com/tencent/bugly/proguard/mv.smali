.class public final Lcom/tencent/bugly/proguard/mv;
.super Lcom/tencent/bugly/proguard/ms;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ms;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bk(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mn;
    .locals 1

    invoke-static {p1}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->bn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/bugly/proguard/mv;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/mv;->F(I)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    return-object p1
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
