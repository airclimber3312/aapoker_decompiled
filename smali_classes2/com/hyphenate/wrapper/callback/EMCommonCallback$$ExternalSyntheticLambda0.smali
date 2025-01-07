.class public final synthetic Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/callback/EMCommonCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/callback/EMCommonCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-virtual {v0}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->lambda$onSuccess$0$com-hyphenate-wrapper-callback-EMCommonCallback()V

    return-void
.end method
