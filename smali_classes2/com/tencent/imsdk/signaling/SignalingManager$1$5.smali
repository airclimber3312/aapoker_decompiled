.class Lcom/tencent/imsdk/signaling/SignalingManager$1$5;
.super Ljava/lang/Object;
.source "SignalingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/signaling/SignalingManager$1;->onInvitationTimeout(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

.field final synthetic val$inviteID:Ljava/lang/String;

.field final synthetic val$inviteeList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/signaling/SignalingManager$1;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$5;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iput-object p2, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$5;->val$inviteID:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$5;->val$inviteeList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$5;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/signaling/SignalingManager$1;->this$0:Lcom/tencent/imsdk/signaling/SignalingManager;

    invoke-static {v0}, Lcom/tencent/imsdk/signaling/SignalingManager;->access$100(Lcom/tencent/imsdk/signaling/SignalingManager;)Lcom/tencent/imsdk/signaling/SignalingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$5;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/signaling/SignalingManager$1;->this$0:Lcom/tencent/imsdk/signaling/SignalingManager;

    invoke-static {v0}, Lcom/tencent/imsdk/signaling/SignalingManager;->access$100(Lcom/tencent/imsdk/signaling/SignalingManager;)Lcom/tencent/imsdk/signaling/SignalingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$5;->val$inviteID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$5;->val$inviteeList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/signaling/SignalingListener;->onInvitationTimeout(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
