.class Lcom/hyphenate/chat/EMGroupManager$41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMGroupManager;->removeFromGroupWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMGroupManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMCallBack;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$members:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager$41;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMGroupManager$41;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMGroupManager$41;->val$members:Ljava/util/List;

    iput-object p4, p0, Lcom/hyphenate/chat/EMGroupManager$41;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$41;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager$41;->val$groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMGroupManager$41;->val$members:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->removeFromWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$41;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    invoke-static {v1, v0}, Lcom/hyphenate/chat/EMGroupManager;->access$000(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/chat/adapter/EMAError;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$41;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$41;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
