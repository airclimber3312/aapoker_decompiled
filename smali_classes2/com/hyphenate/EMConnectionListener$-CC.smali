.class public final synthetic Lcom/hyphenate/EMConnectionListener$-CC;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x8
    versionHash = "ea87655719898b9807d7a88878e9de051d12af172d2fab563c9881b5e404e7d4"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onLogout(Lcom/hyphenate/EMConnectionListener;I)V
    .locals 0
    .param p0, "_this"    # Lcom/hyphenate/EMConnectionListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public static $default$onLogout(Lcom/hyphenate/EMConnectionListener;ILcom/hyphenate/chat/EMLoginExtensionInfo;)V
    .locals 0
    .param p0, "_this"    # Lcom/hyphenate/EMConnectionListener;

    .line 0
    invoke-virtual {p2}, Lcom/hyphenate/chat/EMLoginExtensionInfo;->getDeviceInfo()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/hyphenate/EMConnectionListener;->onLogout(ILjava/lang/String;)V

    return-void
.end method

.method public static $default$onLogout(Lcom/hyphenate/EMConnectionListener;ILjava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Lcom/hyphenate/EMConnectionListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-interface {p0, p1}, Lcom/hyphenate/EMConnectionListener;->onLogout(I)V

    return-void
.end method

.method public static $default$onTokenExpired(Lcom/hyphenate/EMConnectionListener;)V
    .locals 0
    .param p0, "_this"    # Lcom/hyphenate/EMConnectionListener;

    .line 0
    return-void
.end method

.method public static $default$onTokenWillExpire(Lcom/hyphenate/EMConnectionListener;)V
    .locals 0
    .param p0, "_this"    # Lcom/hyphenate/EMConnectionListener;

    .line 0
    return-void
.end method
