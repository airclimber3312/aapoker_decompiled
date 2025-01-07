.class Lcom/hyphenate/chat/EMClient$11$1;
.super Lcom/hyphenate/chat/adapter/EMAChatClient$CheckResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMClient$11;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient$11;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$11$1;->this$1:Lcom/hyphenate/chat/EMClient$11;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAChatClient$CheckResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMServiceChecker"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$11$1;->this$1:Lcom/hyphenate/chat/EMClient$11;

    iget-object v0, v0, Lcom/hyphenate/chat/EMClient$11;->this$0:Lcom/hyphenate/chat/EMClient;

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$11$1;->this$1:Lcom/hyphenate/chat/EMClient$11;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$11;->val$listener:Lcom/hyphenate/chat/EMClient$CheckResultListener;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/hyphenate/chat/EMClient;->access$1500(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/EMClient$CheckResultListener;IILjava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$11$1;->this$1:Lcom/hyphenate/chat/EMClient$11;

    iget-object p1, p1, Lcom/hyphenate/chat/EMClient$11;->this$0:Lcom/hyphenate/chat/EMClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/hyphenate/chat/EMClient;->access$1602(Lcom/hyphenate/chat/EMClient;Z)Z

    return-void

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$11$1;->this$1:Lcom/hyphenate/chat/EMClient$11;

    iget-object p1, p1, Lcom/hyphenate/chat/EMClient$11;->this$0:Lcom/hyphenate/chat/EMClient;

    iget-object p2, p0, Lcom/hyphenate/chat/EMClient$11$1;->this$1:Lcom/hyphenate/chat/EMClient$11;

    iget-object p2, p2, Lcom/hyphenate/chat/EMClient$11;->val$listener:Lcom/hyphenate/chat/EMClient$CheckResultListener;

    invoke-static {p1, p2}, Lcom/hyphenate/chat/EMClient;->access$1700(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/EMClient$CheckResultListener;)V

    :cond_1
    return-void
.end method
