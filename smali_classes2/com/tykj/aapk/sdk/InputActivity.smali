.class public Lcom/tykj/aapk/sdk/InputActivity;
.super Landroid/app/Activity;
.source "InputActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public closeInputMethod()V
    .locals 3

    const-string/jumbo v0, "\u5173\u95ed\u8f93\u5165\u684601"

    const-string/jumbo v1, "\u624b\u673a\u8bbe\u5907\u76f8\u5173"

    .line 24
    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/InputActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "\u5173\u95ed\u8f93\u5165\u68461"

    .line 28
    invoke-static {v1, v2}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input_method"

    .line 29
    invoke-virtual {p0, v1}, Lcom/tykj/aapk/sdk/InputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "\u624b\u673a\u8bbe\u5907\u76f8\u5173"

    const-string/jumbo v0, "\u5173\u95ed\u8f93\u5165\u684600"

    .line 16
    invoke-static {p1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/InputActivity;->closeInputMethod()V

    return-void
.end method
