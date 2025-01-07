.class Lcom/hyphenate/chat/EMChatService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatService;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatService;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatService;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatService$1;->this$0:Lcom/hyphenate/chat/EMChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatService$1;->this$0:Lcom/hyphenate/chat/EMChatService;

    const-class v2, Lcom/hyphenate/chat/EMChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatService$1;->this$0:Lcom/hyphenate/chat/EMChatService;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/EMChatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
