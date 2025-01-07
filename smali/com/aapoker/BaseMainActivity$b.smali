.class public Lcom/aapoker/BaseMainActivity$b;
.super Ljava/lang/Object;
.source "BaseMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/aapoker/BaseMainActivity;


# direct methods
.method public constructor <init>(Lcom/aapoker/BaseMainActivity;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/BaseMainActivity$b;->c:Lcom/aapoker/BaseMainActivity;

    iput-object p2, p0, Lcom/aapoker/BaseMainActivity$b;->a:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/aapoker/BaseMainActivity$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aapoker/BaseMainActivity$b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/aapoker/BaseMainActivity$b;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
