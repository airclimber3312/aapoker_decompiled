.class public Lio/agora/rtc2/RtcEngineConfig$LogConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/RtcEngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogConfig"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public fileSizeInKB:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/agora/rtc2/Constants$LogLevel;->LOG_LEVEL_INFO:Lio/agora/rtc2/Constants$LogLevel;

    invoke-static {v0}, Lio/agora/rtc2/Constants$LogLevel;->getValue(Lio/agora/rtc2/Constants$LogLevel;)I

    move-result v0

    iput v0, p0, Lio/agora/rtc2/RtcEngineConfig$LogConfig;->level:I

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/RtcEngineConfig$LogConfig;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/RtcEngineConfig$LogConfig;->fileSizeInKB:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/RtcEngineConfig$LogConfig;->level:I

    return v0
.end method
