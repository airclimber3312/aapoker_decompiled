.class public final Lcom/tencent/bugly/proguard/ec$4;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic mn:Lcom/tencent/bugly/proguard/ec;

.field final synthetic mv:Z


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/ec;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ec$4;->mn:Lcom/tencent/bugly/proguard/ec;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ec$4;->mv:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dm()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec$4;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ec;->b(Lcom/tencent/bugly/proguard/ec;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_crash_lock"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Failed to lock file for uploading local crash."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ec$4;->mv:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec$4;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ec;->c(Lcom/tencent/bugly/proguard/ec;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->checkSaveRecordCrash()V

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/ef;->dq()Lcom/tencent/bugly/proguard/ef;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ec$4;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ec;->b(Lcom/tencent/bugly/proguard/ec;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_0
    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "bugly_custom_zips"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mP:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->mP:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ef;->e(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ef;->dr()Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mK:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ef;->ds()Ljava/net/URL;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mL:Ljava/net/URL;

    new-instance v3, Lcom/tencent/bugly/proguard/am;

    invoke-direct {v3, v2}, Lcom/tencent/bugly/proguard/am;-><init>(B)V

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dh;->bK()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/dh;->hF:Ljava/lang/String;

    iput-object v5, v3, Lcom/tencent/bugly/proguard/am;->buildNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    const-string v5, "unknow_app_key"

    iput-object v5, v3, Lcom/tencent/bugly/proguard/am;->appKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    iput-object v5, v3, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v5

    iget-object v6, v0, Lcom/tencent/bugly/proguard/ef;->mContext:Landroid/content/Context;

    const-string v7, "RMonitor_SP"

    invoke-virtual {v5, v6, v7, v4}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, v3, Lcom/tencent/bugly/proguard/am;->bB:Landroid/content/SharedPreferences;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v5

    iget-object v6, v0, Lcom/tencent/bugly/proguard/ef;->mContext:Landroid/content/Context;

    const-string v7, "BUGLY_COMMON_VALUES"

    invoke-virtual {v5, v6, v7, v4}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, v3, Lcom/tencent/bugly/proguard/am;->bC:Landroid/content/SharedPreferences;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/dh;->bD:Ljava/lang/String;

    iput-object v5, v3, Lcom/tencent/bugly/proguard/am;->bD:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dh;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/bugly/proguard/am;->m(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dh;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/bugly/proguard/am;->l(Ljava/lang/String;)V

    new-instance v3, Lcom/tencent/bugly/proguard/bw;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/tencent/bugly/proguard/ef;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v6}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/tencent/bugly/proguard/bw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mN:Lcom/tencent/bugly/proguard/bw;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->mQ:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/v1/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ef;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/custom/upload-file"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mO:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ef;->mJ:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ef;->dq()Lcom/tencent/bugly/proguard/ef;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec$4;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ec;->b(Lcom/tencent/bugly/proguard/ec;)Landroid/content/Context;

    move-result-object v0

    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/bugly_upload_file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bugly_upload_zip"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ef;->e(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    invoke-static {v5}, Lcom/tencent/bugly/proguard/ef;->e(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec$4;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ec;->d(Lcom/tencent/bugly/proguard/ec;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/dn$a;->cH()Lcom/tencent/bugly/proguard/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dn;->cF()V

    const-string v0, "check db and upload record."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/eb;->cY()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Size of crash list need to upload: %s"

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ec$4;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/ec;->a(Lcom/tencent/bugly/proguard/ec;Ljava/util/List;)V

    goto :goto_2

    :cond_6
    const-string v0, "no crash need to be uploaded at this start."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec$4;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ec;->b(Lcom/tencent/bugly/proguard/ec;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/dz;->c(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
