.class Lcom/hyphenate/chat/EMGroupManager$37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMGroupManager;->asyncFetchGroupMuteList(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMGroupManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$pageNum:I

.field final synthetic val$pageSize:I


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager$37;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    iput-object p3, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$groupId:Ljava/lang/String;

    iput p4, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$pageNum:I

    iput p5, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$pageSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$37;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$groupId:Ljava/lang/String;

    iget v3, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$pageNum:I

    iget v4, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$pageSize:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/hyphenate/chat/EMGroupManager;->fetchGroupMuteList(Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$37;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
