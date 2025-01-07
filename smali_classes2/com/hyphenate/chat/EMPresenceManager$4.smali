.class Lcom/hyphenate/chat/EMPresenceManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMPresenceManager;->unsubscribePresences(Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMPresenceManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMCallBack;

.field final synthetic val$members:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMPresenceManager;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMPresenceManager$4;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMPresenceManager$4;->val$members:Ljava/util/List;

    iput-object p3, p0, Lcom/hyphenate/chat/EMPresenceManager$4;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPresenceManager$4;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMPresenceManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMPresenceManager$4;->val$members:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->unsubscribePresences(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager$4;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMPresenceManager$4;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
