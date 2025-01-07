.class public Lcom/hyphenate/chat/adapter/EMAStatisticsManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgStatistics(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAMessageStatistics;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->nativeGetMsgStatistics(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    move-result-object p1

    return-object p1
.end method

.method native nativeGetMsgStatistics(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAMessageStatistics;
.end method

.method native nativeRemoveMsgStatisticsBeforeTime(J)Z
.end method

.method native nativeSearchMsgStatisticsNumber(JJII)I
.end method

.method native nativeSearchMsgStatisticsSize(JJII)J
.end method

.method public removeMsgStatisticsBeforeTime(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->nativeRemoveMsgStatisticsBeforeTime(J)Z

    move-result p1

    return p1
.end method

.method public searchMsgStatisticsNumber(JJII)I
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->nativeSearchMsgStatisticsNumber(JJII)I

    move-result p1

    return p1
.end method

.method public searchMsgStatisticsSize(JJII)J
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->nativeSearchMsgStatisticsSize(JJII)J

    move-result-wide p1

    return-wide p1
.end method
