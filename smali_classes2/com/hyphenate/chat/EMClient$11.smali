.class Lcom/hyphenate/chat/EMClient$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->check(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMClient$CheckResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;

.field final synthetic val$finalPwd:Ljava/lang/String;

.field final synthetic val$finalUser:Ljava/lang/String;

.field final synthetic val$listener:Lcom/hyphenate/chat/EMClient$CheckResultListener;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMClient$CheckResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$11;->this$0:Lcom/hyphenate/chat/EMClient;

    iput-object p2, p0, Lcom/hyphenate/chat/EMClient$11;->val$finalUser:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMClient$11;->val$finalPwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMClient$11;->val$listener:Lcom/hyphenate/chat/EMClient$CheckResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$11;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$000(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$11;->val$finalUser:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$11;->val$finalPwd:Ljava/lang/String;

    new-instance v3, Lcom/hyphenate/chat/EMClient$11$1;

    invoke-direct {v3, p0}, Lcom/hyphenate/chat/EMClient$11$1;-><init>(Lcom/hyphenate/chat/EMClient$11;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->check(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAChatClient$CheckResultListener;)V

    return-void
.end method
