.class Lio/agora/rtc2/extensions/MediaProjectionSource$2;
.super Landroid/media/projection/MediaProjection$Callback;
.source "MediaProjectionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/extensions/MediaProjectionSource;->onProjectionResult(Landroid/media/projection/MediaProjection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/extensions/MediaProjectionSource;


# direct methods
.method constructor <init>(Lio/agora/rtc2/extensions/MediaProjectionSource;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$2;->this$0:Lio/agora/rtc2/extensions/MediaProjectionSource;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 370
    invoke-super {p0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    const-string v0, "MediaProjectionSource"

    const-string/jumbo v1, "virtualDisplay onStop"

    .line 371
    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
