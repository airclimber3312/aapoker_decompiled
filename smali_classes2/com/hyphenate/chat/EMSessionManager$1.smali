.class Lcom/hyphenate/chat/EMSessionManager$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMSessionManager;->startCountDownTokenAvailableTime(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMSessionManager;

.field final synthetic val$connectionListener:Lcom/hyphenate/chat/adapter/EMAConnectionListener;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSessionManager;Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSessionManager$1;->this$0:Lcom/hyphenate/chat/EMSessionManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMSessionManager$1;->val$connectionListener:Lcom/hyphenate/chat/adapter/EMAConnectionListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager$1;->this$0:Lcom/hyphenate/chat/EMSessionManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSessionManager$1;->val$connectionListener:Lcom/hyphenate/chat/adapter/EMAConnectionListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMSessionManager;->checkTokenAvailability(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V

    return-void
.end method
