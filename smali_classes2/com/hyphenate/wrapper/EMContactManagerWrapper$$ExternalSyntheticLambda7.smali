.class public final synthetic Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Ljava/lang/String;ZLcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;->f$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;->f$2:Z

    iput-object p4, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;->f$3:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;->f$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;->f$2:Z

    iget-object v3, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;->f$3:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->lambda$deleteContact$1$com-hyphenate-wrapper-EMContactManagerWrapper(Ljava/lang/String;ZLcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method
