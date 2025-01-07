.class Lcom/hyphenate/chat/EMGroupManager$49$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMGroupManager$49;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMGroupManager$49;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMGroupManager$49;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager$49$1;->this$1:Lcom/hyphenate/chat/EMGroupManager$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$49$1;->this$1:Lcom/hyphenate/chat/EMGroupManager$49;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager$49;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/EMValueCallBack;->onProgress(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
