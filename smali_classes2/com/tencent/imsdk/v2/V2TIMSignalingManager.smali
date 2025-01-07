.class public abstract Lcom/tencent/imsdk/v2/V2TIMSignalingManager;
.super Ljava/lang/Object;
.source "V2TIMSignalingManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMSignalingManager;
    .locals 1

    .line 7
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract addInvitedSignaling(Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract addSignalingListener(Lcom/tencent/imsdk/v2/V2TIMSignalingListener;)V
.end method

.method public abstract cancel(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract getSignalingInfo(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;
.end method

.method public abstract invite(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;ILcom/tencent/imsdk/v2/V2TIMCallback;)Ljava/lang/String;
.end method

.method public abstract inviteInGroup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILcom/tencent/imsdk/v2/V2TIMCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract modifyInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract reject(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract removeSignalingListener(Lcom/tencent/imsdk/v2/V2TIMSignalingListener;)V
.end method
