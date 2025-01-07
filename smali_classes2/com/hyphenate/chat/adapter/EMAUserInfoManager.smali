.class public Lcom/hyphenate/chat/adapter/EMAUserInfoManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchUserInfoByAttribute(Ljava/util/List;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAUserInfoManager;->nativeFetchUserInfoByAttribute(Ljava/util/List;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method native nativeFetchUserInfoByAttribute(Ljava/util/List;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method native nativeUpdateOwnInfo(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method public updateOwnInfo(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAUserInfoManager;->nativeUpdateOwnInfo(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
