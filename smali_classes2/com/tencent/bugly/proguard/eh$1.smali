.class final Lcom/tencent/bugly/proguard/eh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/eh;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mT:Lcom/tencent/bugly/proguard/eh;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/eh;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/eh$1;->mT:Lcom/tencent/bugly/proguard/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/eh$1;->mT:Lcom/tencent/bugly/proguard/eh;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/eh;->a(Lcom/tencent/bugly/proguard/eh;)V

    return-void
.end method
