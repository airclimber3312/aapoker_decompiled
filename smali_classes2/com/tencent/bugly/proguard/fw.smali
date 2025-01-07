.class public final Lcom/tencent/bugly/proguard/fw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/kg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/fw$a;
    }
.end annotation


# instance fields
.field private rJ:Lcom/tencent/bugly/proguard/fw$a;

.field rK:Z

.field rL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fw;->rJ:Lcom/tencent/bugly/proguard/fw$a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/fw;->rK:Z

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fw;->rL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final au(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fw;->rL:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/fw;->rL:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/fw;->rK:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/bugly/proguard/fw;->rJ:Lcom/tencent/bugly/proguard/fw$a;

    if-nez p1, :cond_1

    new-instance p1, Lcom/tencent/bugly/proguard/fw$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/tencent/bugly/proguard/fw$a;-><init>(Lcom/tencent/bugly/proguard/fw;B)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/fw;->rJ:Lcom/tencent/bugly/proguard/fw$a;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/fw;->rK:Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/fw;->rJ:Lcom/tencent/bugly/proguard/fw$a;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method
