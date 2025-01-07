.class Lcom/hyphenate/chat/EMPresenceManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMPresenceManager;->subscribePresences(Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMPresenceManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$expiry:J

.field final synthetic val$members:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMPresenceManager;Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->val$members:Ljava/util/List;

    iput-wide p3, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->val$expiry:J

    iput-object p5, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMPresenceManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->val$members:Ljava/util/List;

    iget-wide v3, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->val$expiry:J

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->subscribePresences(Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    iget-object v2, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    invoke-static {v2, v1}, Lcom/hyphenate/chat/EMPresenceManager;->access$100(Lcom/hyphenate/chat/EMPresenceManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMPresenceManager$3;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
