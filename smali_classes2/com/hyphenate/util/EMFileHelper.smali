.class public Lcom/hyphenate/util/EMFileHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/util/EMFileHelper$FilePresenterImpl;,
        Lcom/hyphenate/util/EMFileHelper$IFilePresenter;,
        Lcom/hyphenate/util/EMFileHelper$EMFileHelperInstance;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/hyphenate/util/EMFileHelper$FilePresenterImpl;

    invoke-direct {v0}, Lcom/hyphenate/util/EMFileHelper$FilePresenterImpl;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hyphenate/util/EMFileHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/util/EMFileHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/hyphenate/util/EMFileHelper;
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper$EMFileHelperInstance;->access$100()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deletePrivateFile(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public formatInUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/VersionUtils;->isTargetQ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/hyphenate/util/UriUtils;->uriStartWithContent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public formatInUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public formatInUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public formatInUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatInUriToString(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatInUriToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatOutLocalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public formatOutUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/VersionUtils;->isTargetQ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/hyphenate/util/UriUtils;->uriStartWithContent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getFileLength(Landroid/net/Uri;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    iget-object v1, p0, Lcom/hyphenate/util/EMFileHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/hyphenate/util/EMFileHelper$IFilePresenter;->getFileLength(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileLength(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    iget-object v1, p0, Lcom/hyphenate/util/EMFileHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/hyphenate/util/EMFileHelper$IFilePresenter;->getFileMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/util/EMFileHelper$IFilePresenter;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/util/EMFileHelper;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    iget-object v1, p0, Lcom/hyphenate/util/EMFileHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/hyphenate/util/EMFileHelper$IFilePresenter;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilename(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    iget-object v1, p0, Lcom/hyphenate/util/EMFileHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/hyphenate/util/EMFileHelper$IFilePresenter;->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isFileExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/util/EMFileHelper$IFilePresenter;->isFileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public isFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public isFileExist(Landroid/net/Uri;)Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    iget-object v1, p0, Lcom/hyphenate/util/EMFileHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/hyphenate/util/EMFileHelper$IFilePresenter;->isFileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public isFileExist(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public setFileHelper(Lcom/hyphenate/util/EMFileHelper$IFilePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/util/EMFileHelper;->mHelper:Lcom/hyphenate/util/EMFileHelper$IFilePresenter;

    return-void
.end method

.method public uriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
