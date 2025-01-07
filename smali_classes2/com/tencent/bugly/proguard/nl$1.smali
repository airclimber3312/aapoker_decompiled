.class final Lcom/tencent/bugly/proguard/nl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/nl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bj:Lcom/tencent/bugly/proguard/nl;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/nl;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nl$1;->Bj:Lcom/tencent/bugly/proguard/nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nl$1;->Bj:Lcom/tencent/bugly/proguard/nl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/nl;->C(Z)V

    return-void
.end method
