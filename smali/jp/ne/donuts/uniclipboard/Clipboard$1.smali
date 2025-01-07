.class final Ljp/ne/donuts/uniclipboard/Clipboard$1;
.super Ljava/lang/Object;
.source "Clipboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/ne/donuts/uniclipboard/Clipboard;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 18
    iput-object p1, p0, Ljp/ne/donuts/uniclipboard/Clipboard$1;->val$text:Ljava/lang/String;

    iput-object p2, p0, Ljp/ne/donuts/uniclipboard/Clipboard$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 21
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v1, p0, Ljp/ne/donuts/uniclipboard/Clipboard$1;->val$text:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "text/uri-list"

    .line 23
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Landroid/content/ClipData;

    new-instance v3, Landroid/content/ClipDescription;

    const-string v4, "text_data"

    invoke-direct {v3, v4, v1}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 25
    iget-object v0, p0, Ljp/ne/donuts/uniclipboard/Clipboard$1;->val$activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
