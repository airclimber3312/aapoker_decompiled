.class Lio/agora/utils2/internal/CommonUtility$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/utils2/internal/CommonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/utils2/internal/CommonUtility;


# direct methods
.method constructor <init>(Lio/agora/utils2/internal/CommonUtility;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/utils2/internal/CommonUtility$10;->this$0:Lio/agora/utils2/internal/CommonUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/agora/utils2/internal/CommonUtility$10;->this$0:Lio/agora/utils2/internal/CommonUtility;

    invoke-static {v0}, Lio/agora/utils2/internal/CommonUtility;->access$400(Lio/agora/utils2/internal/CommonUtility;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/agora/utils2/internal/CommonUtility$10;->this$0:Lio/agora/utils2/internal/CommonUtility;

    invoke-virtual {v0}, Lio/agora/utils2/internal/CommonUtility;->getDisplayRotation()I

    iget-object v0, p0, Lio/agora/utils2/internal/CommonUtility$10;->this$0:Lio/agora/utils2/internal/CommonUtility;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/utils2/internal/CommonUtility;->access$502(Lio/agora/utils2/internal/CommonUtility;Z)Z

    return-void
.end method
