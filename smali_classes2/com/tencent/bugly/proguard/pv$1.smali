.class final Lcom/tencent/bugly/proguard/pv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Fe:Ljava/lang/String;

.field final synthetic Ff:I

.field final synthetic Fg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pv$1;->Fe:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/bugly/proguard/pv$1;->Ff:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/pv$1;->Fg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pv$1;->Fe:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/bugly/proguard/pv$1;->Ff:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/bb;->b(Lcom/tencent/bugly/proguard/am;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/pv$1;->Fg:Ljava/lang/String;

    const-string v4, "looper"

    invoke-static {v4, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/rb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
