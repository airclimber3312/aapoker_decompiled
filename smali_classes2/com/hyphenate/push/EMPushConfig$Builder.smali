.class public Lcom/hyphenate/push/EMPushConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/push/EMPushConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hyphenate/push/EMPushType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/hyphenate/push/EMPushConfig$Builder;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->MIPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->b(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->c(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableMiPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_1
    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->HMSPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableHWPush()Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_2
    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->VIVOPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableVivoPush()Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_3
    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->OPPOPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->d(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->e(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableOppoPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_4
    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->MEIZUPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->f(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->g(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableMeiZuPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_5
    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->h(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableFCM(Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_6
    invoke-static {p2}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p2, Lcom/hyphenate/push/EMPushType;->HONORPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableHonorPush()Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_7
    return-void
.end method


# virtual methods
.method public build()Lcom/hyphenate/push/EMPushConfig;
    .locals 2

    new-instance v0, Lcom/hyphenate/push/EMPushConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hyphenate/push/EMPushConfig;-><init>(Lcom/hyphenate/push/EMPushConfig$1;)V

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->b(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->c(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->d(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->e(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->f(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->g(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->h(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->i(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->j(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->k(Lcom/hyphenate/push/EMPushConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/hyphenate/push/EMPushConfig;->a(Lcom/hyphenate/push/EMPushConfig;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0
.end method

.method public enableFCM(Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    sget-object v0, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const-string p1, "EMPushConfig"

    const-string v0, "senderId can\'t be empty when enable FCM push !"

    invoke-static {p1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public enableHWPush()Lcom/hyphenate/push/EMPushConfig$Builder;
    .locals 6

    const-string v0, "="

    const-string v1, "com.huawei.hms.client.appid"

    const-string v2, "EMPushConfig"

    :try_start_0
    iget-object v3, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->c:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    sget-object v1, Lcom/hyphenate/push/EMPushType;->HMSPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "Huawei push meta-data: com.huawei.hms.client.appid value must be like this \'appid=xxxxxx\'."

    goto :goto_2

    :catch_1
    const-string v0, "Huawei push must config meta-data: com.huawei.hms.client.appid in AndroidManifest.xml."

    :goto_2
    invoke-static {v2, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_3
    return-object p0
.end method

.method public enableHonorPush()Lcom/hyphenate/push/EMPushConfig$Builder;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.hihonor.push.app_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    sget-object v1, Lcom/hyphenate/push/EMPushType;->HONORPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "EMPushConfig"

    const-string v1, "Honor push must config meta-data: com.hihonor.push.app_id in AndroidManifest.xml."

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public enableMeiZuPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    sget-object p2, Lcom/hyphenate/push/EMPushType;->MEIZUPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const-string p1, "EMPushConfig"

    const-string p2, "appId or appKey can\'t be empty when enable MEIZU push !"

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public enableMiPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    sget-object p2, Lcom/hyphenate/push/EMPushType;->MIPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const-string p1, "EMPushConfig"

    const-string p2, "appId or appKey can\'t be empty when enable MI push !"

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public enableOppoPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    sget-object p2, Lcom/hyphenate/push/EMPushType;->OPPOPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const-string p1, "EMPushConfig"

    const-string p2, "appKey or appSecret can\'t be empty when enable OPPO push !"

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public enableVivoPush()Lcom/hyphenate/push/EMPushConfig$Builder;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.vivo.push.app_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->k:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.vivo.push.api_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/push/EMPushConfig$Builder;->m:Ljava/util/ArrayList;

    sget-object v1, Lcom/hyphenate/push/EMPushType;->VIVOPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameNotFoundException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPushConfig"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
