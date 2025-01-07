.class public Lcom/tencent/imsdk/message/MessageOfflinePushInfo;
.super Ljava/lang/Object;
.source "MessageOfflinePushInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;,
        Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;
    }
.end annotation


# static fields
.field public static final OFFLINE_APNS_BADGE_MODE_DEFAULT:I = 0x0

.field public static final OFFLINE_APNS_BADGE_MODE_IGNORE:I = 0x1

.field public static final OFFLINE_PUSH_FLAG_DEFAULT:I = 0x0

.field public static final OFFLINE_PUSH_FLAG_NO_PUSH:I = 0x1


# instance fields
.field private androidConfig:Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;

.field private apnsConfig:Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

.field private description:Ljava/lang/String;

.field private extension:[B

.field private pushFlag:I

.field private soundFilePath:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;-><init>(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V

    iput-object v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->apnsConfig:Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

    .line 18
    new-instance v0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;-><init>(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V

    iput-object v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->androidConfig:Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;

    return-void
.end method


# virtual methods
.method public getAndroidConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->androidConfig:Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;

    return-object v0
.end method

.method public getApnsConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->apnsConfig:Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()[B
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->extension:[B

    return-object v0
.end method

.method public getPushFlag()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->pushFlag:I

    return v0
.end method

.method public getSoundFilePath()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->soundFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidConfig(Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->androidConfig:Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;

    return-void
.end method

.method public setApnsConfig(Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->apnsConfig:Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setExtension([B)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->extension:[B

    return-void
.end method

.method public setPushFlag(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->pushFlag:I

    return-void
.end method

.method public setSoundFilePath(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->soundFilePath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->title:Ljava/lang/String;

    return-void
.end method
