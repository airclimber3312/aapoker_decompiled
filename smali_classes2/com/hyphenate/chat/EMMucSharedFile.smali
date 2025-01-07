.class public Lcom/hyphenate/chat/EMMucSharedFile;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAMucShareFile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMMucSharedFile;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;-><init>(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMMucSharedFile;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMucSharedFile;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->getFileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMucSharedFile;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMucSharedFile;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->getFileOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMucSharedFile;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileUpdateTime()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMucSharedFile;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMucShareFile;->getUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method
