.class Lcom/hyphenate/chat/EMHeartBeatReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMHeartBeatReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMHeartBeatReceiver;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMHeartBeatReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMHeartBeatReceiver$1;->this$0:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMHeartBeatReceiver$1;->this$0:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    iget-object v0, v0, Lcom/hyphenate/chat/EMHeartBeatReceiver;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMHeartBeatReceiver$1;->this$0:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    iget-object v0, v0, Lcom/hyphenate/chat/EMHeartBeatReceiver;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->start()V

    :cond_0
    return-void
.end method
