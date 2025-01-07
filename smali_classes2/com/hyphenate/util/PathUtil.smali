.class public Lcom/hyphenate/util/PathUtil;
.super Ljava/lang/Object;


# static fields
.field public static final filePathName:Ljava/lang/String; = "/file/"

.field public static final historyPathName:Ljava/lang/String; = "/chat/"

.field public static final imagePathName:Ljava/lang/String; = "/image/"

.field private static instance:Lcom/hyphenate/util/PathUtil; = null

.field public static final meetingPathName:Ljava/lang/String; = "/meeting/"

.field public static final netdiskDownloadPathName:Ljava/lang/String; = "/netdisk/"

.field public static pathPrefix:Ljava/lang/String; = null

.field private static storageDir:Ljava/io/File; = null

.field public static final videoPathName:Ljava/lang/String; = "/video/"

.field public static final voicePathName:Ljava/lang/String; = "/voice/"


# instance fields
.field private filePath:Ljava/io/File;

.field private historyPath:Ljava/io/File;

.field private imagePath:Ljava/io/File;

.field private videoPath:Ljava/io/File;

.field private voicePath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/util/PathUtil;->voicePath:Ljava/io/File;

    iput-object v0, p0, Lcom/hyphenate/util/PathUtil;->imagePath:Ljava/io/File;

    iput-object v0, p0, Lcom/hyphenate/util/PathUtil;->historyPath:Ljava/io/File;

    iput-object v0, p0, Lcom/hyphenate/util/PathUtil;->videoPath:Ljava/io/File;

    return-void
.end method

.method private static generateFiePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-string v0, "/file/"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/hyphenate/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static generateHistoryPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-string v0, "/chat/"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/hyphenate/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static generateImagePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-string v0, "/image/"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/hyphenate/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static generateVideoPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-string v0, "/video/"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/hyphenate/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static generateVoicePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-string v0, "/voice/"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/hyphenate/util/PathUtil;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInstance()Lcom/hyphenate/util/PathUtil;
    .locals 1

    sget-object v0, Lcom/hyphenate/util/PathUtil;->instance:Lcom/hyphenate/util/PathUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hyphenate/util/PathUtil;

    invoke-direct {v0}, Lcom/hyphenate/util/PathUtil;-><init>()V

    sput-object v0, Lcom/hyphenate/util/PathUtil;->instance:Lcom/hyphenate/util/PathUtil;

    :cond_0
    sget-object v0, Lcom/hyphenate/util/PathUtil;->instance:Lcom/hyphenate/util/PathUtil;

    return-object v0
.end method

.method private static getStorageDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    sget-object v0, Lcom/hyphenate/util/PathUtil;->storageDir:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/hyphenate/util/PathUtil;->storageDir:Ljava/io/File;

    :cond_1
    sget-object p0, Lcom/hyphenate/util/PathUtil;->storageDir:Ljava/io/File;

    return-object p0
.end method

.method public static getTempPath(Ljava/io/File;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFilePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->filePath:Ljava/io/File;

    return-object v0
.end method

.method public getHistoryPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->historyPath:Ljava/io/File;

    return-object v0
.end method

.method public getImagePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->imagePath:Ljava/io/File;

    return-object v0
.end method

.method public getVideoPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->videoPath:Ljava/io/File;

    return-object v0
.end method

.method public getVoicePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->voicePath:Ljava/io/File;

    return-object v0
.end method

.method public initDirs(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/util/PathUtil;->pathPrefix:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/hyphenate/util/PathUtil;->generateVoicePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/util/PathUtil;->voicePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->voicePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/hyphenate/util/PathUtil;->generateImagePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/util/PathUtil;->imagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->imagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/hyphenate/util/PathUtil;->generateHistoryPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/util/PathUtil;->historyPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->historyPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/hyphenate/util/PathUtil;->generateVideoPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/util/PathUtil;->videoPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hyphenate/util/PathUtil;->videoPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-static {p1, p2, p3}, Lcom/hyphenate/util/PathUtil;->generateFiePath(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/util/PathUtil;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/hyphenate/util/PathUtil;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_4
    return-void
.end method
