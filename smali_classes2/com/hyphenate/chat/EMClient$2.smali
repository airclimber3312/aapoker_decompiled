.class Lcom/hyphenate/chat/EMClient$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->logout(ZLcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;

.field final synthetic val$callback:Lcom/hyphenate/EMCallBack;

.field final synthetic val$unbindToken:Z


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;ZLcom/hyphenate/EMCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$2;->this$0:Lcom/hyphenate/chat/EMClient;

    iput-boolean p2, p0, Lcom/hyphenate/chat/EMClient$2;->val$unbindToken:Z

    iput-object p3, p0, Lcom/hyphenate/chat/EMClient$2;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$2;->this$0:Lcom/hyphenate/chat/EMClient;

    iget-boolean v1, p0, Lcom/hyphenate/chat/EMClient$2;->val$unbindToken:Z

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->logout(Z)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$2;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v1, :cond_1

    const-string v2, "faild to unbind device token"

    invoke-interface {v1, v0, v2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$2;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    :cond_1
    :goto_0
    return-void
.end method
