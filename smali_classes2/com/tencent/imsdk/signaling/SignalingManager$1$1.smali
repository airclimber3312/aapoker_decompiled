.class Lcom/tencent/imsdk/signaling/SignalingManager$1$1;
.super Ljava/lang/Object;
.source "SignalingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/signaling/SignalingManager$1;->onReceiveNewInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$groupID:Ljava/lang/String;

.field final synthetic val$inviteID:Ljava/lang/String;

.field final synthetic val$inviteeList:Ljava/util/List;

.field final synthetic val$inviter:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/signaling/SignalingManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iput-object p2, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$inviteID:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$inviter:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$groupID:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$inviteeList:Ljava/util/List;

    iput-object p6, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/signaling/SignalingManager$1;->this$0:Lcom/tencent/imsdk/signaling/SignalingManager;

    invoke-static {v0}, Lcom/tencent/imsdk/signaling/SignalingManager;->access$100(Lcom/tencent/imsdk/signaling/SignalingManager;)Lcom/tencent/imsdk/signaling/SignalingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->this$1:Lcom/tencent/imsdk/signaling/SignalingManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/signaling/SignalingManager$1;->this$0:Lcom/tencent/imsdk/signaling/SignalingManager;

    invoke-static {v0}, Lcom/tencent/imsdk/signaling/SignalingManager;->access$100(Lcom/tencent/imsdk/signaling/SignalingManager;)Lcom/tencent/imsdk/signaling/SignalingListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$inviteID:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$inviter:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$groupID:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$inviteeList:Ljava/util/List;

    iget-object v6, p0, Lcom/tencent/imsdk/signaling/SignalingManager$1$1;->val$data:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/imsdk/signaling/SignalingListener;->onReceiveNewInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
