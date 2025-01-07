.class final Lcom/tencent/bugly/proguard/ff$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ff;->dY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pN:Lcom/tencent/bugly/proguard/ff;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ff;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ff$1;->pN:Lcom/tencent/bugly/proguard/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ff$1;->pN:Lcom/tencent/bugly/proguard/ff;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ff;->a(Lcom/tencent/bugly/proguard/ff;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ff$1;->pN:Lcom/tencent/bugly/proguard/ff;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ff;->b(Lcom/tencent/bugly/proguard/ff;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ff$1;->pN:Lcom/tencent/bugly/proguard/ff;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ff;->c(Lcom/tencent/bugly/proguard/ff;)V

    return-void
.end method
