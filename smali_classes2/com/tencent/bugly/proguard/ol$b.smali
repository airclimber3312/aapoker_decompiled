.class final Lcom/tencent/bugly/proguard/ol$b;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ol;->a(Lcom/tencent/bugly/proguard/nz;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "Lcom/tencent/bugly/proguard/oe;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/tencent/rmonitor/looper/meta/StackFrame;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic CB:Lcom/tencent/bugly/proguard/nz;

.field final synthetic DB:Lcom/tencent/bugly/proguard/ol;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ol;Lcom/tencent/bugly/proguard/nz;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ol$b;->DB:Lcom/tencent/bugly/proguard/ol;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ol$b;->CB:Lcom/tencent/bugly/proguard/nz;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ol$b;->CB:Lcom/tencent/bugly/proguard/nz;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ol$b;->DB:Lcom/tencent/bugly/proguard/ol;

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/ol;->a(Lcom/tencent/bugly/proguard/ol;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ol$b;->CB:Lcom/tencent/bugly/proguard/nz;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
