.class Lcom/hyphenate/chat/EMClient$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->addConnectionListener(Lcom/hyphenate/EMConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;

.field final synthetic val$listener:Lcom/hyphenate/EMConnectionListener;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/EMConnectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$4;->this$0:Lcom/hyphenate/chat/EMClient;

    iput-object p2, p0, Lcom/hyphenate/chat/EMClient$4;->val$listener:Lcom/hyphenate/EMConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$4;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$4;->val$listener:Lcom/hyphenate/EMConnectionListener;

    invoke-interface {v0}, Lcom/hyphenate/EMConnectionListener;->onConnected()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$4;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$4;->val$listener:Lcom/hyphenate/EMConnectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/hyphenate/EMConnectionListener;->onDisconnected(I)V

    :cond_1
    :goto_0
    return-void
.end method
