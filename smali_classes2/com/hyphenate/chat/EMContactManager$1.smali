.class Lcom/hyphenate/chat/EMContactManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMContactManager;->asyncAddContact(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMContactManager;

.field final synthetic val$callback:Lcom/hyphenate/EMCallBack;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMContactManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMContactManager$1;->this$0:Lcom/hyphenate/chat/EMContactManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMContactManager$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMContactManager$1;->val$reason:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMContactManager$1;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$1;->this$0:Lcom/hyphenate/chat/EMContactManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$1;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMContactManager$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMContactManager;->addContact(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$1;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$1;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
