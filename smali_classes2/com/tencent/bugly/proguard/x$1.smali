.class final Lcom/tencent/bugly/proguard/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/x;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ar:Lcom/tencent/bugly/proguard/x;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/x;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/x$1;->ar:Lcom/tencent/bugly/proguard/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/x$1;->ar:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/x;->commit()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/x$1;->ar:Lcom/tencent/bugly/proguard/x;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/x;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
