.class Lcom/hyphenate/notification/core/b$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/notification/core/b$2;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/hyphenate/notification/core/b$2;


# direct methods
.method constructor <init>(Lcom/hyphenate/notification/core/b$2;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/notification/core/b$2$2;->b:Lcom/hyphenate/notification/core/b$2;

    iput-object p2, p0, Lcom/hyphenate/notification/core/b$2$2;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/hyphenate/notification/core/b$2$2;->b:Lcom/hyphenate/notification/core/b$2;

    iget-object p1, p1, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    iget-object p2, p0, Lcom/hyphenate/notification/core/b$2$2;->b:Lcom/hyphenate/notification/core/b$2;

    iget-object p2, p2, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    new-instance v0, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    invoke-direct {v0}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/notification/core/b$2$2;->b:Lcom/hyphenate/notification/core/b$2;

    iget-object v1, v1, Lcom/hyphenate/notification/core/b$2;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, p2, v0, v2, v1}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$2$2;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/notification/core/b$2$2;->b:Lcom/hyphenate/notification/core/b$2;

    iget-object v1, v1, Lcom/hyphenate/notification/core/b$2;->e:Lcom/hyphenate/notification/core/b;

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$2$2;->b:Lcom/hyphenate/notification/core/b$2;

    iget-object v2, v2, Lcom/hyphenate/notification/core/b$2;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    new-instance v3, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;

    invoke-direct {v3}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;-><init>()V

    invoke-virtual {v3, v0}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;->setBigPic(Landroid/graphics/Bitmap;)Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/hyphenate/notification/core/b$2$2;->b:Lcom/hyphenate/notification/core/b$2;

    iget-object v3, v3, Lcom/hyphenate/notification/core/b$2;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v2, v0, v4, v3}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
