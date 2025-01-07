.class public Lcom/tencent/imsdk/signaling/SignalingManager;
.super Ljava/lang/Object;
.source "SignalingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/signaling/SignalingManager$SignalingManagerHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SignalingManager"


# instance fields
.field private mInternalSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

.field private mSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/imsdk/signaling/SignalingManager;)Lcom/tencent/imsdk/signaling/SignalingListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tencent/imsdk/signaling/SignalingManager;->mSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;
    .locals 1

    .line 23
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager$SignalingManagerHolder;->access$000()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object v0

    return-object v0
.end method

.method private initSignalingListener()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager;->mInternalSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/tencent/imsdk/signaling/SignalingManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/signaling/SignalingManager$1;-><init>(Lcom/tencent/imsdk/signaling/SignalingManager;)V

    iput-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager;->mInternalSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingManager;->mInternalSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeSetSignalingObserver(Lcom/tencent/imsdk/signaling/SignalingListener;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 155
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 157
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeAccept(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public addInvitedSignaling(Lcom/tencent/imsdk/signaling/SignalingInfo;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 183
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object p1, Lcom/tencent/imsdk/signaling/SignalingManager;->TAG:Ljava/lang/String;

    const-string p2, "getSignalingInfo error, message is null"

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeAddInvitedSignaling(Lcom/tencent/imsdk/signaling/SignalingInfo;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public cancel(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 145
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 147
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeCancel(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getSignalingInfo(Lcom/tencent/imsdk/message/Message;)Lcom/tencent/imsdk/signaling/SignalingInfo;
    .locals 1

    .line 175
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object p1, Lcom/tencent/imsdk/signaling/SignalingManager;->TAG:Ljava/lang/String;

    const-string v0, "getSignalingInfo error, message is null"

    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeGetSignalingInfo(Lcom/tencent/imsdk/message/Message;)Lcom/tencent/imsdk/signaling/SignalingInfo;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tencent/imsdk/signaling/SignalingManager;->initSignalingListener()V

    return-void
.end method

.method public invite(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/imsdk/message/MessageOfflinePushInfo;ILcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p6, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 122
    invoke-virtual {p6, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeInvite(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/imsdk/message/MessageOfflinePushInfo;ILcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public inviteInGroup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p6, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 137
    invoke-virtual {p6, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 141
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeInviteInGroup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public modifyInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object p1, Lcom/tencent/imsdk/signaling/SignalingManager;->TAG:Ljava/lang/String;

    const-string p2, "getSignalingInfo error, message is null"

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeModifyInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected native nativeAccept(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeAddInvitedSignaling(Lcom/tencent/imsdk/signaling/SignalingInfo;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeCancel(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetSignalingInfo(Lcom/tencent/imsdk/message/Message;)Lcom/tencent/imsdk/signaling/SignalingInfo;
.end method

.method protected native nativeInvite(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/imsdk/message/MessageOfflinePushInfo;ILcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;
.end method

.method protected native nativeInviteInGroup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILcom/tencent/imsdk/common/IMCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected native nativeModifyInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeReject(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetSignalingObserver(Lcom/tencent/imsdk/signaling/SignalingListener;)V
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 165
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 167
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/signaling/SignalingManager;->nativeReject(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setSignalingListener(Lcom/tencent/imsdk/signaling/SignalingListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingManager;->mSignalingListener:Lcom/tencent/imsdk/signaling/SignalingListener;

    return-void
.end method
