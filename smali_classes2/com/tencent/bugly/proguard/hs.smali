.class public final Lcom/tencent/bugly/proguard/hs;
.super Ljava/lang/Object;


# instance fields
.field public appVersion:Ljava/lang/String;

.field public bA:Ljava/lang/String;

.field public bD:Ljava/lang/String;

.field public dt:Ljava/lang/String;

.field public du:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public uD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hs;->uD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hs;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hs;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hs;->bD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hs;->dt:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hs;->du:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hs;->bA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/tencent/bugly/proguard/hs;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/tencent/bugly/proguard/hs;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hs;->uD:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/hs;->uD:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/hs;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/hs;->processName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/hs;->appVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/hs;->appVersion:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/hs;->bD:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/hs;->bD:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/hs;->dt:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/hs;->dt:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/hs;->du:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/hs;->du:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/hs;->bA:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/hs;->bA:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
