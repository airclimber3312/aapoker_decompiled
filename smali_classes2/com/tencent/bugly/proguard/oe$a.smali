.class public final Lcom/tencent/bugly/proguard/oe$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/oe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/meta/StackFrame$Companion;",
        "",
        "()V",
        "poolProvider",
        "Lcom/tencent/rmonitor/looper/meta/PoolProvider;",
        "obtain",
        "Lcom/tencent/rmonitor/looper/meta/StackFrame;",
        "recycle",
        "",
        "stackFrame",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/oe$a;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/oe;)V
    .locals 2

    const-string v0, "stackFrame"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/oe;->hV()Lcom/tencent/bugly/proguard/od;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/od;->hU()Lcom/tencent/bugly/proguard/ck;

    move-result-object v0

    const-string v1, "poolProvider.pool"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/tencent/bugly/proguard/ck$b;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/ck;->a(Lcom/tencent/bugly/proguard/ck$b;)V

    return-void
.end method

.method public static hW()Lcom/tencent/bugly/proguard/oe;
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/oe;->hV()Lcom/tencent/bugly/proguard/od;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/od;->hU()Lcom/tencent/bugly/proguard/ck;

    move-result-object v0

    const-string v1, "poolProvider.pool"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/tencent/bugly/proguard/oe;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ck;->a(Ljava/lang/Class;)Lcom/tencent/bugly/proguard/ck$b;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/bugly/proguard/oe;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
