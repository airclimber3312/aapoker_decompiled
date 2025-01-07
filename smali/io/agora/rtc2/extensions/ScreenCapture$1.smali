.class Lio/agora/rtc2/extensions/ScreenCapture$1;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/extensions/ScreenCapture;->changeCaptureFormatAsync(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/extensions/ScreenCapture;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lio/agora/rtc2/extensions/ScreenCapture;II)V
    .locals 0

    .line 242
    iput-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    iput p2, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->val$width:I

    iput p3, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 245
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->val$width:I

    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$000(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->val$height:I

    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    .line 246
    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$100(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->val$width:I

    iget v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$1;->val$height:I

    invoke-static {v0}, Lio/agora/rtc2/extensions/ScreenCapture;->access$200(Lio/agora/rtc2/extensions/ScreenCapture;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc2/extensions/ScreenCapture;->changeCaptureFormat(IIZ)V

    return-void
.end method
