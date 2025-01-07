.class public Lcom/hyphenate/chat/adapter/EMAMucShareFile;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->nativeInit(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->nativeGetFileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->nativeGetFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileOwner()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->nativeGetFileOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->nativeGetFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->nativeGetUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetFileId()Ljava/lang/String;
.end method

.method native nativeGetFileName()Ljava/lang/String;
.end method

.method native nativeGetFileOwner()Ljava/lang/String;
.end method

.method native nativeGetFileSize()J
.end method

.method native nativeGetUpdateTime()J
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V
.end method
