.class Lcom/hyphenate/chat/EMClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->init(Landroid/content/Context;Lcom/hyphenate/chat/EMOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;

.field final synthetic val$lastLoginUser:Ljava/lang/String;

.field final synthetic val$tag:Lcom/hyphenate/chat/EMTimeTag;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Lcom/hyphenate/chat/EMTimeTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$1;->this$0:Lcom/hyphenate/chat/EMClient;

    iput-object p2, p0, Lcom/hyphenate/chat/EMClient$1;->val$lastLoginUser:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMClient$1;->val$tag:Lcom/hyphenate/chat/EMTimeTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hyphenate login onError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMClient"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$1;->val$tag:Lcom/hyphenate/chat/EMTimeTag;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMTimeTag;->stop()J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Collector][sdk init]login failed time is : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$1;->val$tag:Lcom/hyphenate/chat/EMTimeTag;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMTimeTag;->timeStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContact;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$1;->val$lastLoginUser:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/hyphenate/chat/EMContact;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    const-string v0, "hyphenate login onSuccess"

    const-string v1, "EMClient"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$1;->val$tag:Lcom/hyphenate/chat/EMTimeTag;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMTimeTag;->stop()J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[Collector][sdk init]login time is : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$1;->val$tag:Lcom/hyphenate/chat/EMTimeTag;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMTimeTag;->timeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
