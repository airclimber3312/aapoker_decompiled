.class Lcom/hyphenate/notification/core/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/chat/EMMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hyphenate/notification/core/b;


# direct methods
.method constructor <init>(Lcom/hyphenate/notification/core/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/core/b$1;->a:Lcom/hyphenate/notification/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$1;->a:Lcom/hyphenate/notification/core/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$1;->a:Lcom/hyphenate/notification/core/b;

    const-string v1, "report success"

    invoke-static {v0, v1}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/core/b;Ljava/lang/String;)V

    return-void
.end method
