.class public abstract Lcom/hyphenate/chat/adapter/message/EMAMessageBody;
.super Lcom/hyphenate/chat/adapter/EMABase;


# static fields
.field public static final EMAMessaeBody_Type_CUSTOM:I = 0x7

.field public static final EMAMessageBodyTYPE_COMBINE:I = 0x8

.field public static final EMAMessageBodyType_COMMAND:I = 0x6

.field public static final EMAMessageBodyType_FILE:I = 0x5

.field public static final EMAMessageBodyType_IMAGE:I = 0x1

.field public static final EMAMessageBodyType_LOCATION:I = 0x3

.field public static final EMAMessageBodyType_TEXT:I = 0x0

.field public static final EMAMessageBodyType_VIDEO:I = 0x2

.field public static final EMAMessageBodyType_VOICE:I = 0x4


# instance fields
.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;->type:I

    return-void
.end method


# virtual methods
.method public native nativeOperationCount()I
.end method

.method public native nativeOperationTime()J
.end method

.method public native nativeOperatorId()Ljava/lang/String;
.end method

.method public native nativeType()I
.end method

.method public operationCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;->nativeOperationCount()I

    move-result v0

    return v0
.end method

.method public operationTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;->nativeOperationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public operatorId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;->nativeOperatorId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;->nativeType()I

    move-result v0

    return v0
.end method
