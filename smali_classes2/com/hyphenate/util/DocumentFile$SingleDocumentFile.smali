.class Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;
.super Lcom/hyphenate/util/DocumentFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/util/DocumentFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleDocumentFile"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/hyphenate/util/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/util/DocumentFile;-><init>(Lcom/hyphenate/util/DocumentFile;)V

    iput-object p2, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public delete()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method
