.class Lcom/tencent/imsdk/group/GroupManager$1$5;
.super Ljava/lang/Object;
.source "GroupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/group/GroupManager$1;->onMemberInfoChanged(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/group/GroupManager$1;

.field final synthetic val$groupID:Ljava/lang/String;

.field final synthetic val$v2TIMGroupMemberChangeInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/group/GroupManager$1;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupManager$1$5;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iput-object p2, p0, Lcom/tencent/imsdk/group/GroupManager$1$5;->val$groupID:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/imsdk/group/GroupManager$1$5;->val$v2TIMGroupMemberChangeInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupManager$1$5;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/group/GroupManager$1;->this$0:Lcom/tencent/imsdk/group/GroupManager;

    invoke-static {v0}, Lcom/tencent/imsdk/group/GroupManager;->access$100(Lcom/tencent/imsdk/group/GroupManager;)Lcom/tencent/imsdk/group/GroupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupManager$1$5;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/group/GroupManager$1;->this$0:Lcom/tencent/imsdk/group/GroupManager;

    invoke-static {v0}, Lcom/tencent/imsdk/group/GroupManager;->access$100(Lcom/tencent/imsdk/group/GroupManager;)Lcom/tencent/imsdk/group/GroupListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/group/GroupManager$1$5;->val$groupID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/imsdk/group/GroupManager$1$5;->val$v2TIMGroupMemberChangeInfoList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/group/GroupListener;->onMemberInfoChanged(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
