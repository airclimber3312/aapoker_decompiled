.class Lcom/hyphenate/push/platform/vivo/EMVivoPush$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/push/IPushActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/push/platform/vivo/a;->b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/push/platform/vivo/a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hyphenate/push/platform/vivo/a;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/push/platform/vivo/EMVivoPush$1;->this$0:Lcom/hyphenate/push/platform/vivo/a;

    iput-object p2, p0, Lcom/hyphenate/push/platform/vivo/EMVivoPush$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hyphenate/push/platform/vivo/EMVivoPush$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/push/PushClient;->getRegId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/push/platform/vivo/EMVivoPush$1;->this$0:Lcom/hyphenate/push/platform/vivo/a;

    invoke-virtual {v1}, Lcom/hyphenate/push/platform/vivo/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hyphenate/push/EMPushHelper;->onReceiveToken(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/push/platform/vivo/EMVivoPush$1;->this$0:Lcom/hyphenate/push/platform/vivo/a;

    invoke-virtual {v1}, Lcom/hyphenate/push/platform/vivo/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/push/EMPushHelper;->onErrorResponse(Lcom/hyphenate/push/EMPushType;J)V

    :goto_0
    return-void
.end method
