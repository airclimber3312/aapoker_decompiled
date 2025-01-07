.class Lio/agora/rtc2/extensions/ScreenCapture$2;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/extensions/ScreenCapture;->changeConfigurationAsync(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/extensions/ScreenCapture;

.field final synthetic val$orientation:Z


# direct methods
.method constructor <init>(Lio/agora/rtc2/extensions/ScreenCapture;Z)V
    .locals 0

    .line 277
    iput-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture$2;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    iput-boolean p2, p0, Lio/agora/rtc2/extensions/ScreenCapture$2;->val$orientation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 280
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$2;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/ScreenCapture;->access$000(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v1

    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$2;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$100(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v2

    iget-boolean v3, p0, Lio/agora/rtc2/extensions/ScreenCapture$2;->val$orientation:Z

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc2/extensions/ScreenCapture;->changeCaptureFormat(IIZ)V

    return-void
.end method
