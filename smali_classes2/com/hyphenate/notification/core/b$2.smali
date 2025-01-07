.class Lcom/hyphenate/notification/core/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/EMNotificationMessage;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/hyphenate/notification/EMNotificationMessage;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/hyphenate/notification/core/b;


# direct methods
.method constructor <init>(Lcom/hyphenate/notification/core/b;ILcom/hyphenate/notification/EMNotificationMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    iput p2, p0, Lcom/hyphenate/notification/core/b$2;->a:I

    iput-object p3, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    iput-object p4, p0, Lcom/hyphenate/notification/core/b$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyphenate/notification/core/b$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    iget p1, p0, Lcom/hyphenate/notification/core/b$2;->a:I

    const-string p2, ""

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    new-instance v1, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    invoke-direct {v1}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$2;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    invoke-virtual {p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationBigText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    iget-object v1, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    new-instance v2, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;

    invoke-direct {v2}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;-><init>()V

    invoke-virtual {v2, p1}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;->setBigTxt(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;

    move-result-object p1

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$2;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    invoke-virtual {p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationBigPicPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    invoke-static {v0}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/notification/core/b$2$2;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/notification/core/b$2$2;-><init>(Lcom/hyphenate/notification/core/b$2;Ljava/io/File;)V

    invoke-static {v0, p1, v1, v2}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 5

    iget v0, p0, Lcom/hyphenate/notification/core/b$2;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    iget-object v1, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    new-instance v2, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    invoke-direct {v2}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/notification/core/b$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyphenate/notification/core/b$2;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    invoke-virtual {v0}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationBigText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    new-instance v3, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;

    invoke-direct {v3}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;-><init>()V

    invoke-virtual {v3, v0}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;->setBigTxt(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/hyphenate/notification/core/b$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyphenate/notification/core/b$2;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    invoke-virtual {v0}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationBigPicPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    invoke-static {v2}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hyphenate/notification/core/b$2$1;

    invoke-direct {v4, p0, v1}, Lcom/hyphenate/notification/core/b$2$1;-><init>(Lcom/hyphenate/notification/core/b$2;Ljava/io/File;)V

    invoke-static {v2, v0, v3, v4}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    :cond_2
    :goto_0
    return-void
.end method
