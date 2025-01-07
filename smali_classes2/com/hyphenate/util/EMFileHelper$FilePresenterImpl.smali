.class public Lcom/hyphenate/util/EMFileHelper$FilePresenterImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/util/EMFileHelper$IFilePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/util/EMFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilePresenterImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileLength(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 0

    invoke-static {p1, p2}, Lcom/hyphenate/util/UriUtils;->getFileLength(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getFileMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/hyphenate/util/UriUtils;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/hyphenate/util/UriUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/hyphenate/util/UriUtils;->getFileNameByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isFileExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/hyphenate/util/UriUtils;->isFileExistByUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
