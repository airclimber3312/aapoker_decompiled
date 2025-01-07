.class Lcom/hyphenate/chat/EMContactManager$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMContactManager;->asyncFetchAllContactsFromLocal(Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMContactManager;

.field final synthetic val$callback:Lcom/hyphenate/EMValueCallBack;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMContactManager;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMContactManager$12;->this$0:Lcom/hyphenate/chat/EMContactManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMContactManager$12;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$12;->this$0:Lcom/hyphenate/chat/EMContactManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->fetchAllContactsFromLocal(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMContactManager$12;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v2, v0}, Lcom/hyphenate/chat/EMContactManager;->access$100(Lcom/hyphenate/chat/EMContactManager;Lcom/hyphenate/chat/adapter/EMAError;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$12;->val$callback:Lcom/hyphenate/EMValueCallBack;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/hyphenate/chat/EMContact;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hyphenate/chat/adapter/EMAContact;

    invoke-direct {v3, v4}, Lcom/hyphenate/chat/EMContact;-><init>(Lcom/hyphenate/chat/adapter/EMAContact;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$12;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-interface {v1, v0}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$12;->val$callback:Lcom/hyphenate/EMValueCallBack;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
