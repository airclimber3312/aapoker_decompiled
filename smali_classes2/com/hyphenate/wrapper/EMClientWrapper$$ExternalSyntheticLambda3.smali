.class public final synthetic Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMClientWrapper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/hyphenate/wrapper/EMClientWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;->f$2:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;->f$2:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/wrapper/EMClientWrapper;->lambda$changeAppKey$1$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method
