.class public Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;
.super Lcom/hyphenate/chat/adapter/message/EMAMessageBody;


# instance fields
.field public address:Ljava/lang/String;

.field public buildingName:Ljava/lang/String;

.field public latitude:D

.field public longitude:D


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativeInit(DDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativeInit(DDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativeInit(Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;)V

    return-void
.end method


# virtual methods
.method public address()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativeaddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildingName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativebuildingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public latitude()D
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativelatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public longitude()D
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativelongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit(DDLjava/lang/String;Ljava/lang/String;)V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;)V
.end method

.method native nativeaddress()Ljava/lang/String;
.end method

.method native nativebuildingName()Ljava/lang/String;
.end method

.method native nativelatitude()D
.end method

.method native nativelongitude()D
.end method

.method native nativesetAddress(Ljava/lang/String;)V
.end method

.method native nativesetBuildingName(Ljava/lang/String;)V
.end method

.method native nativesetLatitude(D)V
.end method

.method native nativesetLongitude(D)V
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativesetAddress(Ljava/lang/String;)V

    return-void
.end method

.method public setBuildingName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativesetBuildingName(Ljava/lang/String;)V

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativesetLatitude(D)V

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->nativesetLongitude(D)V

    return-void
.end method
