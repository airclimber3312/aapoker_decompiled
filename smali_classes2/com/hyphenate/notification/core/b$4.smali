.class Lcom/hyphenate/notification/core/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/cloud/EMCloudOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hyphenate/EMCallBack;

.field final synthetic b:Lcom/hyphenate/notification/core/b;


# direct methods
.method constructor <init>(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/notification/core/b$4;->b:Lcom/hyphenate/notification/core/b;

    iput-object p2, p0, Lcom/hyphenate/notification/core/b$4;->a:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$4;->a:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    const/16 v1, 0x193

    invoke-interface {v0, v1, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/hyphenate/notification/core/b$4;->a:Lcom/hyphenate/EMCallBack;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    :cond_0
    return-void
.end method
