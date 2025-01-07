.class Lcom/tencent/imsdk/signaling/SignalingManager$1$3;
.super Ljava/lang/Object;
.source "SignalingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/signaling/SignalingManager$1;->onInviteeRejected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$inviteID:Ljava/lang/String;

.field final synthetic val$invitee:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/signaling/SignalingManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iput-object p2, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->val$inviteID:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->val$invitee:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/signaling/SignalingManager$1;->this$0:Lcom/tencent/imsdk/signaling/SignalingManager;

    invoke-static {v0}, Lcom/tencent/imsdk/signaling/SignalingManager;->access$100(Lcom/tencent/imsdk/signaling/SignalingManager;)Lcom/tencent/imsdk/signaling/SignalingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/signaling/SignalingManager$1;->this$0:Lcom/tencent/imsdk/signaling/SignalingManager;

    invoke-static {v0}, Lcom/tencent/imsdk/signaling/SignalingManager;->access$100(Lcom/tencent/imsdk/signaling/SignalingManager;)Lcom/tencent/imsdk/signaling/SignalingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->val$inviteID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->val$invitee:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$3;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/imsdk/signaling/SignalingListener;->onInviteeRejected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
