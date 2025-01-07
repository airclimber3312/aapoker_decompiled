.class public final synthetic Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/hyphenate/chat/EMTranslator$TranslationCallback;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMTranslationManager;

.field public final synthetic f$1:Lcom/hyphenate/chat/EMTranslationResult;

.field public final synthetic f$2:Lcom/hyphenate/EMValueCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMTranslationManager;Lcom/hyphenate/chat/EMTranslationResult;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMTranslationManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;->f$1:Lcom/hyphenate/chat/EMTranslationResult;

    iput-object p3, p0, Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;->f$2:Lcom/hyphenate/EMValueCallBack;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMTranslationManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;->f$1:Lcom/hyphenate/chat/EMTranslationResult;

    iget-object v2, p0, Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;->f$2:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/hyphenate/chat/EMTranslationManager;->lambda$translate$0$com-hyphenate-chat-EMTranslationManager(Lcom/hyphenate/chat/EMTranslationResult;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
