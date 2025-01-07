.class public Lcom/tencent/imsdk/message/SoundElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "SoundElement.java"


# instance fields
.field private soundBusinessID:I

.field private soundDownloadFlag:I

.field private soundDownloadUrl:Ljava/lang/String;

.field private soundDuration:I

.field private soundFilePath:Ljava/lang/String;

.field private soundFileSize:I

.field private soundUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    const/4 v0, 0x4

    .line 15
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/SoundElement;->setElementType(I)V

    return-void
.end method


# virtual methods
.method public getSoundBusinessID()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundBusinessID:I

    return v0
.end method

.method public getSoundDownloadFlag()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundDownloadFlag:I

    return v0
.end method

.method public getSoundDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundDuration()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundDuration:I

    return v0
.end method

.method public getSoundFilePath()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundFileSize()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundFileSize:I

    return v0
.end method

.method public getSoundUUID()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundUUID:Ljava/lang/String;

    return-object v0
.end method

.method public setSoundDuration(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/tencent/imsdk/message/SoundElement;->soundDuration:I

    return-void
.end method

.method public setSoundFilePath(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/imsdk/message/SoundElement;->soundFilePath:Ljava/lang/String;

    return-void
.end method

.method public setSoundFileSize(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/tencent/imsdk/message/SoundElement;->soundFileSize:I

    return-void
.end method

.method public update(Lcom/tencent/imsdk/message/MessageBaseElement;)Z
    .locals 2

    .line 60
    iget v0, p0, Lcom/tencent/imsdk/message/SoundElement;->elementType:I

    iget v1, p1, Lcom/tencent/imsdk/message/MessageBaseElement;->elementType:I

    if-ne v0, v1, :cond_0

    .line 61
    check-cast p1, Lcom/tencent/imsdk/message/SoundElement;

    .line 62
    iget-object v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/imsdk/message/SoundElement;->soundFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p1, Lcom/tencent/imsdk/message/SoundElement;->soundUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundUUID:Ljava/lang/String;

    .line 64
    iget v0, p1, Lcom/tencent/imsdk/message/SoundElement;->soundFileSize:I

    iput v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundFileSize:I

    .line 65
    iget v0, p1, Lcom/tencent/imsdk/message/SoundElement;->soundDuration:I

    iput v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundDuration:I

    .line 66
    iget v0, p1, Lcom/tencent/imsdk/message/SoundElement;->soundDownloadFlag:I

    iput v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundDownloadFlag:I

    .line 67
    iget-object v0, p1, Lcom/tencent/imsdk/message/SoundElement;->soundDownloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/SoundElement;->soundDownloadUrl:Ljava/lang/String;

    .line 68
    iget p1, p1, Lcom/tencent/imsdk/message/SoundElement;->soundBusinessID:I

    iput p1, p0, Lcom/tencent/imsdk/message/SoundElement;->soundBusinessID:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
