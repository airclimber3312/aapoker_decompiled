.class public Lcom/tencent/imsdk/message/MessageSearchResult;
.super Ljava/lang/Object;
.source "MessageSearchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private messageSearchResultItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageSearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageSearchResultItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageSearchResultItem;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageSearchResult;->messageSearchResultItemList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/tencent/imsdk/message/MessageSearchResult;->totalCount:I

    return v0
.end method
