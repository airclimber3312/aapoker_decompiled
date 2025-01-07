.class final Lcom/tencent/bugly/proguard/el$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/el$1;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nv:Ljava/lang/String;

.field final synthetic nw:Lcom/tencent/bugly/proguard/el$1;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/el$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/el$1$1;->nw:Lcom/tencent/bugly/proguard/el$1;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/el$1$1;->nv:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el$1$1;->nw:Lcom/tencent/bugly/proguard/el$1;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/el$1;->nu:Lcom/tencent/bugly/proguard/el;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el$1$1;->nv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/el;->a(Lcom/tencent/bugly/proguard/el;Ljava/lang/String;)V

    return-void
.end method
