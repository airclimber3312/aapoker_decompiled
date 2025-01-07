.class public final synthetic Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMGroupManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Lcom/hyphenate/EMCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/EMCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$0:Lcom/hyphenate/chat/EMGroupManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$4:Lcom/hyphenate/EMCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;->f$4:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hyphenate/chat/EMGroupManager;->lambda$asyncSetGroupMemberAttributes$0$com-hyphenate-chat-EMGroupManager(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/EMCallBack;)V

    return-void
.end method
