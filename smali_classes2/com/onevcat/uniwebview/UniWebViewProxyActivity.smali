.class public final Lcom/onevcat/uniwebview/UniWebViewProxyActivity;
.super Landroid/app/Activity;
.source "UniWebViewProxyActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewProxyActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0008\u0010\u000f\u001a\u00020\u0006H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewProxyActivity;",
        "Landroid/app/Activity;",
        "()V",
        "handler",
        "Lcom/onevcat/uniwebview/UniWebViewActivityHandler;",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "Companion",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebViewProxyActivity$Companion;

.field public static final HANDLER_ID:Ljava/lang/String; = "com.uniwebview.com.handlerId.UniWebViewProxyActivity"


# instance fields
.field private handler:Lcom/onevcat/uniwebview/UniWebViewActivityHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewProxyActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->Companion:Lcom/onevcat/uniwebview/UniWebViewProxyActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->handler:Lcom/onevcat/uniwebview/UniWebViewActivityHandler;

    if-nez v0, :cond_0

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;->handleResult(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.uniwebview.com.handlerId.UniWebViewProxyActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;->Companion:Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;->getHandlers()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;

    if-eqz v0, :cond_1

    .line 32
    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->handler:Lcom/onevcat/uniwebview/UniWebViewActivityHandler;

    if-nez v0, :cond_0

    const-string v0, "handler"

    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;->onCreate(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;Landroid/os/Bundle;)V

    return-void

    .line 28
    :cond_1
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    const-string v0, "Failed to pass activity handler for this proxy. Please check implementation."

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    .line 30
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null activity handler found!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 38
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->handler:Lcom/onevcat/uniwebview/UniWebViewActivityHandler;

    if-nez v0, :cond_0

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;->onDestroy()V

    return-void
.end method
