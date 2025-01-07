.class public Lcom/tykj/aapk/sdk/imdefind/StorageManage;
.super Ljava/lang/Object;
.source "StorageManage.java"


# static fields
.field private static mInstance:Lcom/tykj/aapk/sdk/imdefind/StorageManage; = null

.field private static final soundFromat:Ljava/lang/String; = ".aac"


# instance fields
.field private path:Ljava/lang/String;

.field private uniqueNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/tykj/aapk/sdk/imdefind/StorageManage;->uniqueNum:I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/crSound/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tykj/aapk/sdk/imdefind/StorageManage;->path:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tykj/aapk/sdk/imdefind/StorageManage;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tykj/aapk/sdk/imdefind/StorageManage;
    .locals 2

    const-class v0, Lcom/tykj/aapk/sdk/imdefind/StorageManage;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/tykj/aapk/sdk/imdefind/StorageManage;->mInstance:Lcom/tykj/aapk/sdk/imdefind/StorageManage;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/tykj/aapk/sdk/imdefind/StorageManage;

    invoke-direct {v1}, Lcom/tykj/aapk/sdk/imdefind/StorageManage;-><init>()V

    sput-object v1, Lcom/tykj/aapk/sdk/imdefind/StorageManage;->mInstance:Lcom/tykj/aapk/sdk/imdefind/StorageManage;

    .line 18
    :cond_0
    sget-object v1, Lcom/tykj/aapk/sdk/imdefind/StorageManage;->mInstance:Lcom/tykj/aapk/sdk/imdefind/StorageManage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public ClearAll()V
    .locals 2

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tykj/aapk/sdk/imdefind/StorageManage;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public getUniquePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 42
    iget-object v2, p0, Lcom/tykj/aapk/sdk/imdefind/StorageManage;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, ".aac"

    aput-object v1, v0, p1

    const-string p1, "%scz-%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
