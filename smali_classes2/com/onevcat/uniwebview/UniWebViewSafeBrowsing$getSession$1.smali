.class public final Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$getSession$1;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "UniWebViewSafeBrowsing.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->getSession(Landroidx/browser/customtabs/CustomTabsClient;)Landroidx/browser/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onevcat/uniwebview/UniWebViewSafeBrowsing$getSession$1",
        "Landroidx/browser/customtabs/CustomTabsCallback;",
        "onNavigationEvent",
        "",
        "navigationEvent",
        "",
        "extras",
        "Landroid/os/Bundle;",
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


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$getSession$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    .line 110
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 112
    sget-object p2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNavigationEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    .line 114
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$getSession$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->access$remove(Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;)V

    .line 115
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$getSession$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->access$getMessageSender$p(Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;)Lcom/onevcat/uniwebview/UnityMessageSender;

    move-result-object p1

    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$getSession$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    invoke-static {p2}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->access$getName$p(Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/onevcat/uniwebview/UnityMethod;->SafeBrowsingFinished:Lcom/onevcat/uniwebview/UnityMethod;

    const-string v1, ""

    invoke-interface {p1, p2, v0, v1}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
