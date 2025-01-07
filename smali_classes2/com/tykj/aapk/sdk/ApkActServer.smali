.class public Lcom/tykj/aapk/sdk/ApkActServer;
.super Landroid/app/Activity;
.source "ApkActServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApkActServer"

.field private static final UNKNOW_APP_CANCEL:I = 0x2767

.field private static final UNKNOW_APP_SOURCE_CODE:I = 0x2766


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected Install(Ljava/io/File;)V
    .locals 2

    const-string v0, "ApkActServer"

    const-string/jumbo v1, "\u68c0\u67e5\u6743\u9650"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/tykj/aapk/sdk/ApkActServer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "package:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tykj/aapk/sdk/ApkActServer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 p1, 0x2766

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/tykj/aapk/sdk/ApkActServer;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/ApkActServer;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tykj/aapk/sdk/ApkActServer;->installOther(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/tykj/aapk/sdk/ApkActServer;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tykj/aapk/sdk/ApkActServer;->installOther(Landroid/content/Context;Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method protected installOther(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    const-string v0, "ApkActServer"

    const-string/jumbo v1, "\u5f00\u59cb\u5b89\u88c5"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "application/vnd.android.package-archive"

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 72
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 75
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    const/16 p1, 0x2767

    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/tykj/aapk/sdk/ApkActServer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/tykj/aapk/sdk/ApkActServer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult requestCode = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ApkActServer"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x2766

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/tykj/aapk/sdk/ApkActServer;->path:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p0, p1}, Lcom/tykj/aapk/sdk/ApkActServer;->Install(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "\u627e\u4e0d\u5230apk"

    .line 91
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/ApkActServer;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/tykj/aapk/sdk/ApkActServer;->activity:Landroid/app/Activity;

    .line 34
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tykj/aapk/sdk/ApkActServer;->context:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/ApkActServer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tykj/aapk/sdk/ApkActServer;->path:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "content : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tykj/aapk/sdk/ApkActServer;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApkActServer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/tykj/aapk/sdk/ApkActServer;->path:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/tykj/aapk/sdk/ApkActServer;->Install(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u627e\u4e0d\u5230apk"

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/ApkActServer;->finish()V

    :goto_0
    return-void
.end method
