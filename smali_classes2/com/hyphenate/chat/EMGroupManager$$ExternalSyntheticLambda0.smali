.class public final synthetic Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMGroupManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/hyphenate/EMValueCallBack;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMGroupManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;->f$2:Lcom/hyphenate/EMValueCallBack;

    iput-object p4, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;->f$2:Lcom/hyphenate/EMValueCallBack;

    iget-object v3, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/EMGroupManager;->lambda$asyncFetchGroupMemberAllAttributes$1$com-hyphenate-chat-EMGroupManager(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;)V

    return-void
.end method
