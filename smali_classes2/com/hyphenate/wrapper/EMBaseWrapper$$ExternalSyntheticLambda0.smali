.class public final synthetic Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/hyphenate/wrapper/EMBaseWrapper;->lambda$onSuccess$0(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;Ljava/lang/Object;)V

    return-void
.end method
