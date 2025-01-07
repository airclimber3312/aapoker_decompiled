.class Lcom/hyphenate/chat/EMMessage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMMessage;->setCallback(Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMMessage;

.field final synthetic val$holder:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessage$1;->this$0:Lcom/hyphenate/chat/EMMessage;

    iput-object p2, p0, Lcom/hyphenate/chat/EMMessage$1;->val$holder:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$1;->val$holder:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$1;->val$holder:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->onProgress(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$1;->val$holder:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->onSuccess()V

    :cond_0
    return-void
.end method
