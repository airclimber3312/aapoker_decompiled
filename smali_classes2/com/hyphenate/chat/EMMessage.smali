.class public Lcom/hyphenate/chat/EMMessage;
.super Lcom/hyphenate/chat/EMBase;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMMessage$Status;,
        Lcom/hyphenate/chat/EMMessage$Type;,
        Lcom/hyphenate/chat/EMMessage$ChatType;,
        Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;,
        Lcom/hyphenate/chat/EMMessage$Direct;,
        Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final ATTR_ENCRYPTED:Ljava/lang/String; = "isencrypted"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "msg"


# instance fields
.field body:Lcom/hyphenate/chat/EMMessageBody;

.field messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMMessage$2;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMMessage$2;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->getMessage(J)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const-string v0, "EMMessage constructed from parcel failed"

    invoke-direct {p1, v0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public static createCombinedSendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMMessage;"
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    new-instance p4, Lcom/hyphenate/chat/EMCombineMessageBody;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMCombineMessageBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, p4}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    return-object v0
.end method

.method public static createFileSendMessage(Landroid/net/Uri;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "msg"

    const-string p1, "file does not exist"

    invoke-static {p0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    new-instance p1, Lcom/hyphenate/chat/EMNormalFileMessageBody;

    invoke-direct {p1, p0}, Lcom/hyphenate/chat/EMNormalFileMessageBody;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    return-object v0
.end method

.method public static createFileSendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hyphenate/chat/EMMessage;->createFileSendMessage(Landroid/net/Uri;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createImageSendMessage(Landroid/net/Uri;ZLjava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "msg"

    const-string p1, "image file does not exsit"

    invoke-static {p0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    new-instance p2, Lcom/hyphenate/chat/EMImageMessageBody;

    invoke-direct {p2, p0}, Lcom/hyphenate/chat/EMImageMessageBody;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMImageMessageBody;->setSendOriginalImage(Z)V

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    return-object v0
.end method

.method public static createImageSendMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/hyphenate/chat/EMMessage;->createImageSendMessage(Landroid/net/Uri;ZLjava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createLocationSendMessage(DDLjava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 8

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMLocationMessageBody;

    move-object v1, v7

    move-object v2, p4

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMLocationMessageBody;-><init>(Ljava/lang/String;DD)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    invoke-virtual {v0, p5}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLocationSendMessage(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 9

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMLocationMessageBody;

    move-object v1, v8

    move-object v2, p4

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMLocationMessageBody;-><init>(Ljava/lang/String;DDLjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    invoke-virtual {v0, p6}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;
    .locals 3

    invoke-static {}, Lcom/hyphenate/chat/EMMessage;->self()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->createReceiveMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p0

    new-instance v0, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object p0

    iget-object p0, p0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMContact;->getUsername()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;
    .locals 3

    invoke-static {}, Lcom/hyphenate/chat/EMMessage;->self()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->createSendMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p0

    new-instance v0, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-object v0
.end method

.method public static createTextSendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMTextMessageBody;

    invoke-direct {v1, p0}, Lcom/hyphenate/chat/EMTextMessageBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string p0, "msg"

    const-string p1, "text content size must be greater than 0"

    invoke-static {p0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createTxtSendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMTextMessageBody;

    invoke-direct {v1, p0}, Lcom/hyphenate/chat/EMTextMessageBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string p0, "msg"

    const-string p1, "text content size must be greater than 0"

    invoke-static {p0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createVideoSendMessage(Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 7

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "msg"

    const-string p1, "video file does not exist"

    invoke-static {p0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    new-instance p3, Lcom/hyphenate/chat/EMVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Landroid/net/Uri;)J

    move-result-wide v5

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMVideoMessageBody;-><init>(Landroid/net/Uri;Landroid/net/Uri;IJ)V

    invoke-virtual {v0, p3}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    return-object v0
.end method

.method public static createVideoSendMessage(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMMessage;->createVideoSendMessage(Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoSendMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMMessage;->createVideoSendMessage(Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createVoiceSendMessage(Landroid/net/Uri;ILjava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 2

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "msg"

    const-string p1, "voice file does not exsit"

    invoke-static {p0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMVoiceMessageBody;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMVoiceMessageBody;-><init>(Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createVoiceSendMessage(Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/hyphenate/chat/EMMessage;->createVoiceSendMessage(Landroid/net/Uri;ILjava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    return-object p0
.end method

.method static self()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addBody(Lcom/hyphenate/chat/EMMessageBody;)V
    .locals 1

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessage;->body:Lcom/hyphenate/chat/EMMessageBody;

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    iget-object p1, p1, Lcom/hyphenate/chat/EMMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->addBody(Lcom/hyphenate/chat/adapter/message/EMAMessageBody;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public conversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->conversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deliverOnlineOnly(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->deliverOnlineOnly(Z)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public direct()Lcom/hyphenate/chat/EMMessage$Direct;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->direction()Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;->SEND:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Direct;->SEND:Lcom/hyphenate/chat/EMMessage$Direct;

    return-object v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Direct;->RECEIVE:Lcom/hyphenate/chat/EMMessage$Direct;

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->ext()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/hyphenate/chat/EMMessageBody;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->body:Lcom/hyphenate/chat/EMMessageBody;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->bodies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;

    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/hyphenate/chat/EMTextMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMTextMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;)V

    :goto_0
    iput-object v1, p0, Lcom/hyphenate/chat/EMMessage;->body:Lcom/hyphenate/chat/EMMessageBody;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/hyphenate/chat/EMCmdMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMCmdMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/hyphenate/chat/EMVideoMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMVideoMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/hyphenate/chat/EMVoiceMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMVoiceMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;)V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/hyphenate/chat/EMImageMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMImageMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;)V

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    if-eqz v1, :cond_6

    new-instance v1, Lcom/hyphenate/chat/EMCombineMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMCombineMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;)V

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/hyphenate/chat/EMLocationMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMLocationMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;)V

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/hyphenate/chat/EMNormalFileMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMNormalFileMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V

    goto :goto_0

    :cond_8
    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    if-eqz v1, :cond_9

    new-instance v1, Lcom/hyphenate/chat/EMCustomMessageBody;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMCustomMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;)V

    goto :goto_0

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->body:Lcom/hyphenate/chat/EMMessageBody;

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBooleanAttribute(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "attribute "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getBooleanAttribute(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1

    :cond_0
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be null or empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getBooleanAttribute(Ljava/lang/String;Z)Z
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getBooleanAttribute(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return p2
.end method

.method public getChatThread()Lcom/hyphenate/chat/EMChatThread;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getChatThread()Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/hyphenate/chat/EMChatThread;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMChatThread;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    return-object v1
.end method

.method public getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->chatType()Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->GROUP:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->ChatRoom:Lcom/hyphenate/chat/EMMessage$ChatType;

    :goto_0
    return-object v0
.end method

.method public getDoubleAttribute(Ljava/lang/String;)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "attribute "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, p1, v4, v5, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getDoubleAttribute(Ljava/lang/String;DLjava/util/concurrent/atomic/AtomicReference;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be null or empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getDoubleAttribute(Ljava/lang/String;D)D
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getDoubleAttribute(Ljava/lang/String;DLjava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-nez p1, :cond_1

    return-wide p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_2
    :goto_0
    return-wide p2
.end method

.method public getFloatAttribute(Ljava/lang/String;)F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "attribute "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, p1, v4, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getFloatAttribute(Ljava/lang/String;FLjava/util/concurrent/atomic/AtomicReference;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be null or empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getFloatAttribute(Ljava/lang/String;F)F
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getFloatAttribute(Ljava/lang/String;FLjava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_2
    :goto_0
    return p2
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->from()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntAttribute(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "attribute "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getIntAttribute(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be null or empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getIntAttribute(Ljava/lang/String;I)I
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getIntAttribute(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return p2
.end method

.method public getJSONArrayAttribute(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "attribute "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const-string v4, "[]"

    invoke-virtual {v3, p1, v4, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getJsonAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be null or empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getJSONObjectAttribute(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "attribute "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const-string/jumbo v4, "{}"

    invoke-virtual {v3, p1, v4, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getJsonAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be null or empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getLongAttribute(Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "attribute "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, p1, v4, v5, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getLongAttribute(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicLong;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be null or empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getLongAttribute(Ljava/lang/String;J)J
    .locals 4

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getLongAttribute(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicLong;)Z

    move-result p1

    if-nez p1, :cond_1

    return-wide p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_2
    :goto_0
    return-wide p2
.end method

.method public getMessageReaction()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessageReaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->reactionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAMessageReaction;

    new-instance v3, Lcom/hyphenate/chat/EMMessageReaction;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMMessageReaction;-><init>(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->msgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgTime()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->timeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getRecaller()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "attribute "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v4, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v4, p1, v2, v3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be null or empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v2, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v2, p1, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->to()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/hyphenate/chat/EMMessage$Type;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->bodies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;->type()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_1
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_2
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_3
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_4
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_5
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_6
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_7
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0

    :cond_8
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public groupAckCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->groupAckCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAcked()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isAcked()Z

    move-result v0

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isBroadcast()Z

    move-result v0

    return v0
.end method

.method public isChatThreadMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isChatThreadMessage()Z

    move-result v0

    return v0
.end method

.method public isContentReplaced()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isContentReplaced()Z

    move-result v0

    return v0
.end method

.method public isDeliverOnlineOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isDeliverOnlineOnly()Z

    move-result v0

    return v0
.end method

.method public isDelivered()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isDeliverAcked()Z

    move-result v0

    return v0
.end method

.method public isListened()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isListened()Z

    move-result v0

    return v0
.end method

.method public isNeedGroupAck()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isNeedGroupAck()Z

    move-result v0

    return v0
.end method

.method public isOnlineState()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isOnlineState()Z

    move-result v0

    return v0
.end method

.method public isUnread()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isRead()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public localTime()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getLocalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method makeCallbackStrong()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->makeItStrong()V

    :cond_0
    return-void
.end method

.method public pinnedInfo()Lcom/hyphenate/chat/EMMessagePinInfo;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->pinedInfo()Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMMessagePinInfo;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMMessagePinInfo;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public progress()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->progress()I

    move-result v0

    return v0
.end method

.method public receiverList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->receiverList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setAcked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setIsAcked(Z)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;D)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setAttribute(Ljava/lang/String;D)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;F)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setAttribute(Ljava/lang/String;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setAttribute(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;J)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setAttribute(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setJsonAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setJsonAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setAttribute(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBody(Lcom/hyphenate/chat/EMMessageBody;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->body:Lcom/hyphenate/chat/EMMessageBody;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessage;->body:Lcom/hyphenate/chat/EMMessageBody;

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->clearBodies()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    iget-object p1, p1, Lcom/hyphenate/chat/EMMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->addBody(Lcom/hyphenate/chat/adapter/message/EMAMessageBody;)V

    :cond_0
    return-void
.end method

.method setCallback(Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    new-instance v1, Lcom/hyphenate/chat/adapter/EMACallback;

    new-instance v2, Lcom/hyphenate/chat/EMMessage$1;

    invoke-direct {v2, p0, p1}, Lcom/hyphenate/chat/EMMessage$1;-><init>(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;)V

    invoke-direct {v1, v2}, Lcom/hyphenate/chat/adapter/EMACallback;-><init>(Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setCallback(Lcom/hyphenate/chat/adapter/EMACallback;)V

    return-void
.end method

.method public setChatType(Lcom/hyphenate/chat/EMMessage$ChatType;)V
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->GROUP:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->CHATROOM:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setChatType(Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;)V

    return-void
.end method

.method public setDeliverAcked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setIsDeliverAcked(Z)V

    return-void
.end method

.method public setDelivered(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setIsDeliverAcked(Z)V

    return-void
.end method

.method public setDirection(Lcom/hyphenate/chat/EMMessage$Direct;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage$Direct;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setDirection(I)V

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setFrom(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMMessage;->self()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hyphenate/chat/EMMessage;->self()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setConversationId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setGroupAckCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setGroupAckCount(I)V

    return-void
.end method

.method declared-synchronized setInnerCallback(Lcom/hyphenate/EMCallBack;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, v0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->innerCallback:Lcom/hyphenate/EMCallBack;

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;-><init>(Lcom/hyphenate/EMCallBack;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessage;->messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/hyphenate/chat/EMMessage;->messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMMessage;->setCallback(Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIsChatThreadMessage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setIsChatThreadMessage(Z)V

    return-void
.end method

.method public setIsNeedGroupAck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setIsNeedGroupAck(Z)V

    return-void
.end method

.method public setListened(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setListened(Z)V

    return-void
.end method

.method public setLocalTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setLocalTime(J)V

    return-void
.end method

.method public declared-synchronized setMessageStatusCallback(Lcom/hyphenate/EMCallBack;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->update(Lcom/hyphenate/EMCallBack;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;-><init>(Lcom/hyphenate/EMCallBack;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessage;->messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    :goto_0
    iget-object p1, p0, Lcom/hyphenate/chat/EMMessage;->messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMMessage;->setCallback(Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setMsgId(Ljava/lang/String;)V

    return-void
.end method

.method public setMsgTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setTimeStamp(J)V

    return-void
.end method

.method public setPriority(Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setPriority(Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setProgress(I)V

    return-void
.end method

.method public setReceiverList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setReceiverList(Ljava/util/List;)V

    return-void
.end method

.method public setStatus(Lcom/hyphenate/chat/EMMessage$Status;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->SUCCESS:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    sget-object v1, Lcom/hyphenate/chat/EMMessage$3;->$SwitchMap$com$hyphenate$chat$EMMessage$Status:[I

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage$Status;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->DELIVERING:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->FAIL:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->SUCCESS:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->NEW:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    :goto_0
    iget-object p1, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setStatus(I)V

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setTo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setConversationId(Ljava/lang/String;)V

    return-void
.end method

.method public setUnread(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUnread unread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " msgId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setIsRead(Z)V

    return-void
.end method

.method public status()Lcom/hyphenate/chat/EMMessage$Status;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->_status()Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Status;->CREATE:Lcom/hyphenate/chat/EMMessage$Status;

    sget-object v2, Lcom/hyphenate/chat/EMMessage$3;->$SwitchMap$com$hyphenate$chat$adapter$message$EMAMessage$EMAMessageStatus:[I

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Status;->INPROGRESS:Lcom/hyphenate/chat/EMMessage$Status;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Status;->FAIL:Lcom/hyphenate/chat/EMMessage$Status;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Status;->SUCCESS:Lcom/hyphenate/chat/EMMessage$Status;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Status;->CREATE:Lcom/hyphenate/chat/EMMessage$Status;

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg{from:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->getNativeHandler()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
