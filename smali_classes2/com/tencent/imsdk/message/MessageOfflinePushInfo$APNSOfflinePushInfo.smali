.class public Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;
.super Ljava/lang/Object;
.source "MessageOfflinePushInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/message/MessageOfflinePushInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APNSOfflinePushInfo"
.end annotation


# instance fields
.field private badgeMode:I

.field private description:Ljava/lang/String;

.field private iOSPushType:I

.field private soundFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->this$0:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->iOSPushType:I

    return-void
.end method


# virtual methods
.method public setBadgeMode(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->badgeMode:I

    return-void
.end method

.method public setIOSPushType(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->iOSPushType:I

    return-void
.end method

.method public setSoundFilePath(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->soundFilePath:Ljava/lang/String;

    return-void
.end method
