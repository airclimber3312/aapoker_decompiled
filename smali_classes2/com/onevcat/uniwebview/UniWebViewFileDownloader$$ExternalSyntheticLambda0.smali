.class public final synthetic Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Lcom/onevcat/uniwebview/DownloadTask;

.field public final synthetic f$2:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/onevcat/uniwebview/DownloadTask;Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;->f$1:Lcom/onevcat/uniwebview/DownloadTask;

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;->f$2:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;->f$1:Lcom/onevcat/uniwebview/DownloadTask;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;->f$2:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->$r8$lambda$XG1UxPWP8RbiNoNCzJC1-nDx87A(Landroid/widget/EditText;Lcom/onevcat/uniwebview/DownloadTask;Lcom/onevcat/uniwebview/UniWebViewFileDownloader;Landroid/content/DialogInterface;I)V

    return-void
.end method
