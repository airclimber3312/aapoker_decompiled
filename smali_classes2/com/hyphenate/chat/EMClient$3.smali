.class Lcom/hyphenate/chat/EMClient$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->logout(Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;

.field final synthetic val$callback:Lcom/hyphenate/EMCallBack;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/EMCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$3;->this$0:Lcom/hyphenate/chat/EMClient;

    iput-object p2, p0, Lcom/hyphenate/chat/EMClient$3;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$3;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hyphenate/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$3;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->logout()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$3;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    :cond_1
    return-void
.end method
