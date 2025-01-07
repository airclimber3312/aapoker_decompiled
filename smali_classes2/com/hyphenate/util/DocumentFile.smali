.class abstract Lcom/hyphenate/util/DocumentFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/util/DocumentFile$RawDocumentFile;,
        Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;,
        Lcom/hyphenate/util/DocumentFile$DocumentsContractApi19;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DocumentFile"


# instance fields
.field private final mParent:Lcom/hyphenate/util/DocumentFile;


# direct methods
.method constructor <init>(Lcom/hyphenate/util/DocumentFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/util/DocumentFile;->mParent:Lcom/hyphenate/util/DocumentFile;

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lcom/hyphenate/util/DocumentFile;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/hyphenate/util/DocumentFile$RawDocumentFile;

    invoke-direct {v1, v0, p0}, Lcom/hyphenate/util/DocumentFile$RawDocumentFile;-><init>(Lcom/hyphenate/util/DocumentFile;Ljava/io/File;)V

    return-object v1
.end method

.method public static fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/hyphenate/util/DocumentFile;
    .locals 2

    new-instance v0, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/hyphenate/util/DocumentFile$SingleDocumentFile;-><init>(Lcom/hyphenate/util/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract canWrite()Z
.end method

.method public abstract delete()Z
.end method

.method public abstract exists()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getParentFile()Lcom/hyphenate/util/DocumentFile;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/DocumentFile;->mParent:Lcom/hyphenate/util/DocumentFile;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract isVirtual()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method
