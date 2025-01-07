.class public final synthetic Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/callback/EMCommonCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/callback/EMCommonCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda2;->f$0:Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    iput p2, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda2;->f$0:Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    iget v1, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->lambda$onProgress$1$com-hyphenate-wrapper-callback-EMCommonCallback(I)V

    return-void
.end method
