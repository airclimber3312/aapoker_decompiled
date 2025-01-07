.class public Lcom/tencent/imsdk/offlinePush/OfflinePushManager;
.super Ljava/lang/Object;
.source "OfflinePushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/offlinePush/OfflinePushManager$OfflinePushManagerHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/imsdk/offlinePush/OfflinePushManager;
    .locals 1

    .line 13
    invoke-static {}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager$OfflinePushManagerHolder;->access$000()Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doEnterBackground(Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 50
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 52
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->nativeDoEnterBackground(Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public doEnterForeground(Lcom/tencent/imsdk/offlinePush/EnterForegroundParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 63
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->nativeDoEnterForeground(Lcom/tencent/imsdk/offlinePush/EnterForegroundParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getOfflinePushConfig(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2

    .line 39
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->nativeGetOfflinePushConfig(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected native nativeDoEnterBackground(Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeDoEnterForeground(Lcom/tencent/imsdk/offlinePush/EnterForegroundParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetOfflinePushConfig(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetOfflinePushConfig(Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetOfflinePushToken(Lcom/tencent/imsdk/offlinePush/OfflinePushToken;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method public setOfflinePushConfig(Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 30
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->nativeSetOfflinePushConfig(Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setOfflinePushToken(Lcom/tencent/imsdk/offlinePush/OfflinePushToken;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 19
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->nativeSetOfflinePushToken(Lcom/tencent/imsdk/offlinePush/OfflinePushToken;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method
