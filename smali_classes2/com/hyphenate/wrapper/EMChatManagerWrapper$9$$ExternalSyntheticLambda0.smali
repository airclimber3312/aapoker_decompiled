.class public final synthetic Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;->lambda$onSuccess$1$com-hyphenate-wrapper-EMChatManagerWrapper$9(Ljava/util/ArrayList;)V

    return-void
.end method
