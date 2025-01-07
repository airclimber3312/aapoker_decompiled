.class final Lcom/tencent/bugly/proguard/pt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/pt;->iy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fb:Ljava/lang/String;

.field final synthetic Fc:Lcom/tencent/bugly/proguard/pt;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/pt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pt$1;->Fc:Lcom/tencent/bugly/proguard/pt;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/pt$1;->Fb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt$1;->Fc:Lcom/tencent/bugly/proguard/pt;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/pt;->EX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt$1;->Fc:Lcom/tencent/bugly/proguard/pt;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/pt$1;->Fb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/pt;->aW(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt$1;->Fc:Lcom/tencent/bugly/proguard/pt;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/pt$1;->Fb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/pt;->aX(Ljava/lang/String;)V

    return-void
.end method
