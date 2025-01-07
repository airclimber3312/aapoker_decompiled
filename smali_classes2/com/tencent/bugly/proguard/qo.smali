.class public final Lcom/tencent/bugly/proguard/qo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/qm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/tencent/bugly/proguard/ik;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/bugly/proguard/qm;"
    }
.end annotation


# instance fields
.field private final GA:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final GB:Lcom/tencent/bugly/proguard/iw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/bugly/proguard/iw<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/tencent/bugly/proguard/iw<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/qo;->GA:Ljava/lang/Class;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/qo;->GB:Lcom/tencent/bugly/proguard/iw;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qo;->GA:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qo;->GB:Lcom/tencent/bugly/proguard/iw;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/qo;->GA:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/ik;

    const-string v1, "listener"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lcom/tencent/bugly/proguard/iw;->wc:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/iw;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qo;->GA:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qo;->GB:Lcom/tencent/bugly/proguard/iw;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/qo;->GA:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/ik;

    const-string v1, "listener"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v0, Lcom/tencent/bugly/proguard/iw;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
