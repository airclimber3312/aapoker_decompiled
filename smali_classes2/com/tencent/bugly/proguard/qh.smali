.class public final Lcom/tencent/bugly/proguard/qh;
.super Ljava/lang/Object;


# instance fields
.field private final Gg:Ljava/lang/String;

.field public final Gk:Lcom/tencent/bugly/proguard/qg;

.field final Gl:Lcom/tencent/bugly/proguard/qg;

.field final Gm:Lcom/tencent/bugly/proguard/qg;

.field Gn:Ljava/lang/String;

.field Go:Ljava/lang/String;

.field dt:Ljava/lang/String;

.field du:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/qh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/qh;->Gg:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gg:Ljava/lang/String;

    new-instance v0, Lcom/tencent/bugly/proguard/qg;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/qg;-><init>(Lcom/tencent/bugly/proguard/qg;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    new-instance v0, Lcom/tencent/bugly/proguard/qg;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/qg;-><init>(Lcom/tencent/bugly/proguard/qg;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    new-instance v0, Lcom/tencent/bugly/proguard/qg;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/qg;-><init>(Lcom/tencent/bugly/proguard/qg;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/qh;->Gg:Ljava/lang/String;

    new-instance v1, Lcom/tencent/bugly/proguard/qg;

    invoke-direct {v1, v0, p1}, Lcom/tencent/bugly/proguard/qg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    new-instance v0, Lcom/tencent/bugly/proguard/qg;

    const-string v1, "fg_"

    invoke-direct {v0, v1, p1}, Lcom/tencent/bugly/proguard/qg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    new-instance v0, Lcom/tencent/bugly/proguard/qg;

    const-string v1, "bg_"

    invoke-direct {v0, v1, p1}, Lcom/tencent/bugly/proguard/qg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/bz;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/tencent/bugly/proguard/qh;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/tencent/bugly/proguard/qh;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/qg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/qg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/qg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method final iV()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stage_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/qh;->Gg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final iW()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user_custom_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/qh;->Gg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final iX()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process_launch_id_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/qh;->Gg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final iY()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launch_id_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/qh;->Gg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
