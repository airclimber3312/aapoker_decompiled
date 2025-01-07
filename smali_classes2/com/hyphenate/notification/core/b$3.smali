.class Lcom/hyphenate/notification/core/b$3;
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
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/hyphenate/notification/EMNotificationMessage;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/hyphenate/notification/core/b;


# direct methods
.method constructor <init>(Lcom/hyphenate/notification/core/b;Ljava/io/File;Lcom/hyphenate/notification/EMNotificationMessage;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/notification/core/b$3;->d:Lcom/hyphenate/notification/core/b;

    iput-object p2, p0, Lcom/hyphenate/notification/core/b$3;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/hyphenate/notification/core/b$3;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    iput-object p4, p0, Lcom/hyphenate/notification/core/b$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/hyphenate/notification/core/b$3;->d:Lcom/hyphenate/notification/core/b;

    iget-object p2, p0, Lcom/hyphenate/notification/core/b$3;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    new-instance v0, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    invoke-direct {v0}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    const-string v1, ""

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$3;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/notification/core/b$3;->d:Lcom/hyphenate/notification/core/b;

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$3;->b:Lcom/hyphenate/notification/EMNotificationMessage;

    new-instance v3, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;

    invoke-direct {v3}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;-><init>()V

    invoke-virtual {v3, v0}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;->setBigPic(Landroid/graphics/Bitmap;)Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;

    move-result-object v0

    const-string v3, ""

    iget-object v4, p0, Lcom/hyphenate/notification/core/b$3;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
