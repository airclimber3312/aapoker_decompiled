.class final Lcom/tencent/bugly/proguard/nn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/nn;->a(Lcom/tencent/bugly/proguard/nn$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BC:Lcom/tencent/bugly/proguard/nn;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/nn;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nn$1;->BC:Lcom/tencent/bugly/proguard/nn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn$1;->BC:Lcom/tencent/bugly/proguard/nn;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nn;->hy()V

    return-void
.end method
