.class Lcom/tencent/imsdk/group/GroupManager$1$11;
.super Ljava/lang/Object;
.source "GroupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/group/GroupManager$1;->onApplicationProcessed(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/group/GroupManager$1;

.field final synthetic val$groupID:Ljava/lang/String;

.field final synthetic val$isAgreeJoin:Z

.field final synthetic val$opReason:Ljava/lang/String;

.field final synthetic val$opUser:Lcom/tencent/imsdk/group/GroupMemberInfo;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/group/GroupManager$1;Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;ZLjava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iput-object p2, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->val$groupID:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->val$opUser:Lcom/tencent/imsdk/group/GroupMemberInfo;

    iput-boolean p4, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->val$isAgreeJoin:Z

    iput-object p5, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->val$opReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/group/GroupManager$1;->this$0:Lcom/tencent/imsdk/group/GroupManager;

    invoke-static {v0}, Lcom/tencent/imsdk/group/GroupManager;->access$100(Lcom/tencent/imsdk/group/GroupManager;)Lcom/tencent/imsdk/group/GroupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/group/GroupManager$1;->this$0:Lcom/tencent/imsdk/group/GroupManager;

    invoke-static {v0}, Lcom/tencent/imsdk/group/GroupManager;->access$100(Lcom/tencent/imsdk/group/GroupManager;)Lcom/tencent/imsdk/group/GroupListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->val$groupID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->val$opUser:Lcom/tencent/imsdk/group/GroupMemberInfo;

    iget-boolean v3, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->val$isAgreeJoin:Z

    iget-object v4, p0, Lcom/tencent/imsdk/group/GroupManager$1$11;->val$opReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/imsdk/group/GroupListener;->onApplicationProcessed(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
