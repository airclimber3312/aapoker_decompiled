.class synthetic Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper$1;
.super Ljava/lang/Object;
.source "EMMessageBodyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hyphenate$chat$EMFileMessageBody$EMDownloadStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 408
    invoke-static {}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->values()[Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper$1;->$SwitchMap$com$hyphenate$chat$EMFileMessageBody$EMDownloadStatus:[I

    :try_start_0
    sget-object v1, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->DOWNLOADING:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper$1;->$SwitchMap$com$hyphenate$chat$EMFileMessageBody$EMDownloadStatus:[I

    sget-object v1, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->SUCCESSED:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper$1;->$SwitchMap$com$hyphenate$chat$EMFileMessageBody$EMDownloadStatus:[I

    sget-object v1, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->FAILED:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper$1;->$SwitchMap$com$hyphenate$chat$EMFileMessageBody$EMDownloadStatus:[I

    sget-object v1, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->PENDING:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
