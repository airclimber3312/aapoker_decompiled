.class public final synthetic Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/onevcat/uniwebview/UniWebView;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda2;->f$1:Lcom/onevcat/uniwebview/UniWebView;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda2;->f$1:Lcom/onevcat/uniwebview/UniWebView;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/onevcat/uniwebview/UniWebView;->$r8$lambda$nKvOufldCgPFh43XZKe0sWPKMf4(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V

    return-void
.end method
