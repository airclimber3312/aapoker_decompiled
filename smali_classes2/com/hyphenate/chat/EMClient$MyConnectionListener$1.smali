.class Lcom/hyphenate/chat/EMClient$MyConnectionListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient$MyConnectionListener;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient$MyConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$1;->this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$1;->this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    iget-object v0, v0, Lcom/hyphenate/chat/EMClient$MyConnectionListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$1;->this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$MyConnectionListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMConnectionListener;

    invoke-interface {v2}, Lcom/hyphenate/EMConnectionListener;->onConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
