.class public final synthetic Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMGroupManager;

.field public final synthetic f$1:Lcom/hyphenate/EMValueCallBack;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$0:Lcom/hyphenate/chat/EMGroupManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$1:Lcom/hyphenate/EMValueCallBack;

    iput-object p3, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$1:Lcom/hyphenate/EMValueCallBack;

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;->f$4:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hyphenate/chat/EMGroupManager;->lambda$asyncFetchGroupMembersAttributes$2$com-hyphenate-chat-EMGroupManager(Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
