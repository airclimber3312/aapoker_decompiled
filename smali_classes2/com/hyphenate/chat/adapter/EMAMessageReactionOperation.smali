.class public Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->nativeInit(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getOperation()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->nativeGetOperation()I

    move-result v0

    return v0
.end method

.method public getReaction()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->nativeGetReaction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->nativeGetUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetOperation()I
.end method

.method native nativeGetReaction()Ljava/lang/String;
.end method

.method native nativeGetUserId()Ljava/lang/String;
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V
.end method
