.class public final Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$bindCustomTabsService$bind$1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "UniWebViewSafeBrowsing.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->bindCustomTabsService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onevcat/uniwebview/UniWebViewSafeBrowsing$bindCustomTabsService$bind$1",
        "Landroidx/browser/customtabs/CustomTabsServiceConnection;",
        "onCustomTabsServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "client",
        "Landroidx/browser/customtabs/CustomTabsClient;",
        "onServiceDisconnected",
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

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$bindCustomTabsService$bind$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    .line 51
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$bindCustomTabsService$bind$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->setClient(Landroidx/browser/customtabs/CustomTabsClient;)V

    .line 54
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$bindCustomTabsService$bind$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->getShouldShowWhenServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$bindCustomTabsService$bind$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->show()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing$bindCustomTabsService$bind$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->setClient(Landroidx/browser/customtabs/CustomTabsClient;)V

    return-void
.end method
