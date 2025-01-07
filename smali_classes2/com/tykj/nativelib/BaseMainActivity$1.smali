.class Lcom/tykj/nativelib/BaseMainActivity$1;
.super Ljava/lang/Object;
.source "BaseMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/nativelib/BaseMainActivity;->PrintLog(Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/nativelib/BaseMainActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$toast:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/tykj/nativelib/BaseMainActivity;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/tykj/nativelib/BaseMainActivity$1;->this$0:Lcom/tykj/nativelib/BaseMainActivity;

    iput-object p2, p0, Lcom/tykj/nativelib/BaseMainActivity$1;->val$toast:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/tykj/nativelib/BaseMainActivity$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/tykj/nativelib/BaseMainActivity$1;->val$toast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tykj/nativelib/BaseMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tykj/nativelib/BaseMainActivity$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
