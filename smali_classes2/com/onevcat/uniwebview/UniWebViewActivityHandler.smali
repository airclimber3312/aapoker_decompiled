.class public interface abstract Lcom/onevcat/uniwebview/UniWebViewActivityHandler;
.super Ljava/lang/Object;
.source "UniWebViewProxyActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u0008\u0010\u000e\u001a\u00020\u0003H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewActivityHandler;",
        "",
        "handleResult",
        "",
        "activity",
        "Lcom/onevcat/uniwebview/UniWebViewProxyActivity;",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "Companion",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;->$$INSTANCE:Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;->Companion:Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;

    return-void
.end method


# virtual methods
.method public abstract handleResult(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;IILandroid/content/Intent;)V
.end method

.method public abstract onCreate(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method
