.class public Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;
.super Ljava/lang/Object;
.source "OfflinePushConfig.java"


# instance fields
.field private c2cSoundFilePath:Ljava/lang/String;

.field private groupSoundFilePath:Ljava/lang/String;

.field private openOfflinePush:I

.field private videoChatSoundFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpenOfflinePush()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;->openOfflinePush:I

    return v0
.end method

.method public setC2cSoundFilePath(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;->c2cSoundFilePath:Ljava/lang/String;

    return-void
.end method

.method public setGroupSoundFilePath(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;->groupSoundFilePath:Ljava/lang/String;

    return-void
.end method

.method public setOpenOfflinePush(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;->openOfflinePush:I

    return-void
.end method

.method public setVideoChatSoundFilePath(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;->videoChatSoundFilePath:Ljava/lang/String;

    return-void
.end method
