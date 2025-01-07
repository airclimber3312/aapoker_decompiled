.class Lcom/hyphenate/notification/core/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/notification/core/b;->b(Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hyphenate/notification/EMNotificationMessage;

.field final synthetic b:Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/hyphenate/notification/core/b;


# direct methods
.method constructor <init>(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/notification/core/b$5;->e:Lcom/hyphenate/notification/core/b;

    iput-object p2, p0, Lcom/hyphenate/notification/core/b$5;->a:Lcom/hyphenate/notification/EMNotificationMessage;

    iput-object p3, p0, Lcom/hyphenate/notification/core/b$5;->b:Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    iput-object p4, p0, Lcom/hyphenate/notification/core/b$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyphenate/notification/core/b$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/notification/core/b$5;->e:Lcom/hyphenate/notification/core/b;

    iget-object v1, p0, Lcom/hyphenate/notification/core/b$5;->a:Lcom/hyphenate/notification/EMNotificationMessage;

    iget-object v2, p0, Lcom/hyphenate/notification/core/b$5;->b:Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    iget-object v3, p0, Lcom/hyphenate/notification/core/b$5;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyphenate/notification/core/b$5;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hyphenate/notification/core/b;->b(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
