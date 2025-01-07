.class public Lcom/hyphenate/chat/adapter/EMAPushManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRemindTypeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeClearRemindTypeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public disableOfflineNotification(IILcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeDisableOfflineNotification(IILcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public enableOfflineNotification(Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeEnableOfflineNotification(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public getNoPushGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetNoPushGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNoPushUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetNoPushUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPushConfigs()Lcom/hyphenate/chat/adapter/EMAPushConfigs;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetPushConfigs()Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    move-result-object v0

    return-object v0
.end method

.method public getPushConfigsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAPushConfigs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetPushConfigsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    move-result-object p1

    return-object p1
.end method

.method public getPushPerformLanguage(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetPushPerformLanguage(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPushTemplate(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetPushTemplate(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSilentModeForAll(Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetSilentModeForAll(Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    move-result-object p1

    return-object p1
.end method

.method public getSilentModeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetSilentModeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    move-result-object p1

    return-object p1
.end method

.method public getSilentModeForConversations(Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMASilentModeItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeGetSilentModeForConversations(Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method native nativeClearRemindTypeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeDisableOfflineNotification(IILcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeEnableOfflineNotification(Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeGetNoPushGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetNoPushUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetPushConfigs()Lcom/hyphenate/chat/adapter/EMAPushConfigs;
.end method

.method native nativeGetPushConfigsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAPushConfigs;
.end method

.method native nativeGetPushPerformLanguage(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method native nativeGetPushTemplate(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method native nativeGetSilentModeForAll(Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;
.end method

.method native nativeGetSilentModeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;
.end method

.method native nativeGetSilentModeForConversations(Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMASilentModeItem;",
            ">;"
        }
    .end annotation
.end method

.method native nativeReportPushAction(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeSetPushPerformLanguage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeSetPushTemplate(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeSetSilentModeForAll(Lcom/hyphenate/chat/adapter/EMASilentModeParam;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;
.end method

.method native nativeSetSilentModeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMASilentModeParam;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;
.end method

.method native nativeUpdatePushDisplayStyle(ILcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeUpdatePushNickname(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeUpdatePushServiceForGroup(Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation
.end method

.method native nativeUpdatePushServiceForUsers(Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation
.end method

.method public reportPushAction(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeReportPushAction(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public setPushPerformLanguage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeSetPushPerformLanguage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public setPushTemplate(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeSetPushTemplate(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public setSilentModeForAll(Lcom/hyphenate/chat/adapter/EMASilentModeParam;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeSetSilentModeForAll(Lcom/hyphenate/chat/adapter/EMASilentModeParam;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    move-result-object p1

    return-object p1
.end method

.method public setSilentModeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMASilentModeParam;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeSetSilentModeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMASilentModeParam;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    move-result-object p1

    return-object p1
.end method

.method public updatePushDisplayStyle(ILcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeUpdatePushDisplayStyle(ILcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public updatePushNickname(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeUpdatePushNickname(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public updatePushServiceForGroup(Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeUpdatePushServiceForGroup(Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public updatePushServiceForUsers(Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeUpdatePushServiceForUsers(Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method
