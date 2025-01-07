.class public Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;
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
    name = "AndroidOfflinePushInfo"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private notifyMode:I

.field private oppoChannelID:Ljava/lang/String;

.field private soundFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

.field private title:Ljava/lang/String;

.field private vivoClassification:I


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;->this$0:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;->vivoClassification:I

    return-void
.end method


# virtual methods
.method public setOppoChannelID(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;->oppoChannelID:Ljava/lang/String;

    return-void
.end method

.method public setSoundFilePath(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;->soundFilePath:Ljava/lang/String;

    return-void
.end method

.method public setVivoClassification(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;->vivoClassification:I

    return-void
.end method
