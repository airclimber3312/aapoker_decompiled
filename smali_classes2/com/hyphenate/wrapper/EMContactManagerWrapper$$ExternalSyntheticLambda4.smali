.class public final synthetic Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

.field public final synthetic f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda4;->f$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda4;->f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda4;->f$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda4;->f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->lambda$getAllContactsFromServer$2$com-hyphenate-wrapper-EMContactManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method
