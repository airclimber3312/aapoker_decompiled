.class Lcom/hyphenate/chat/EMGroupManager$31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMGroupManager;->asyncFetchGroupMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMGroupManager;

.field final synthetic val$callback:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$cursor:Ljava/lang/String;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$pageSize:I


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager$31;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$cursor:Ljava/lang/String;

    iput p4, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$pageSize:I

    iput-object p5, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$31;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$groupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$cursor:Ljava/lang/String;

    iget v3, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$pageSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/EMGroupManager;->fetchGroupMembers(Ljava/lang/String;Ljava/lang/String;I)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-interface {v1, v0}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$31;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
