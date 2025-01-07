.class Lio/agora/rtc2/extensions/MediaProjectionMgr$1;
.super Ljava/lang/Object;
.source "MediaProjectionMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 434
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$000()Lio/agora/rtc2/extensions/MediaProjectionMgr;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$000()Lio/agora/rtc2/extensions/MediaProjectionMgr;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$300(Lio/agora/rtc2/extensions/MediaProjectionMgr;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;

    if-nez v0, :cond_1

    return-void

    .line 441
    :cond_1
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-interface {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
