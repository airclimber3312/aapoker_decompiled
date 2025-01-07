.class public Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;->nativeInit(Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;->nativeGetFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;->nativeGetMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageReactionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;->nativeGetMessageReactionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;->nativeGetOperations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;->nativeGetTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetFrom()Ljava/lang/String;
.end method

.method native nativeGetMessageId()Ljava/lang/String;
.end method

.method native nativeGetMessageReactionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetOperations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetTo()Ljava/lang/String;
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;)V
.end method
