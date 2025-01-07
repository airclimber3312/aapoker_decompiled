.class Lcom/hyphenate/chat/EMClient$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->registerActivityLifecycleCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {p1}, Lcom/hyphenate/chat/EMClient;->access$1300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {p1}, Lcom/hyphenate/chat/EMClient;->access$1400(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMClient$AppStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {p1}, Lcom/hyphenate/chat/EMClient;->access$1400(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMClient$AppStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hyphenate/chat/EMClient$AppStateListener;->onForeground()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {p1}, Lcom/hyphenate/chat/EMClient;->access$1300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {p1}, Lcom/hyphenate/chat/EMClient;->access$1400(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMClient$AppStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$10;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {p1}, Lcom/hyphenate/chat/EMClient;->access$1400(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMClient$AppStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hyphenate/chat/EMClient$AppStateListener;->onBackground()V

    :cond_0
    return-void
.end method
