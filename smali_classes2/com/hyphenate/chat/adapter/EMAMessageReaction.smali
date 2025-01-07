.class public Lcom/hyphenate/chat/adapter/EMAMessageReaction;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->nativeInit(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V

    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->nativeCount()I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeCount()I
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V
.end method

.method native nativeReaction()Ljava/lang/String;
.end method

.method native nativeState()Z
.end method

.method native nativeUserList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public reaction()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->nativeReaction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public state()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->nativeState()Z

    move-result v0

    return v0
.end method

.method public userList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->nativeUserList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
