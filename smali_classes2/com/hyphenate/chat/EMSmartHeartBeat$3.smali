.class Lcom/hyphenate/chat/EMSmartHeartBeat$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/chat/EMClient$AppStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$202(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z

    const-string v0, "smart ping"

    const-string v1, "app onBackground"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hyphenate/chat/EMSmartHeartBeat$3$2;

    invoke-direct {v1, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$3$2;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onForeground()V
    .locals 2

    const-string v0, "smart ping"

    const-string v1, "app onForeground"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$202(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hyphenate/chat/EMSmartHeartBeat$3$1;

    invoke-direct {v1, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$3$1;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
