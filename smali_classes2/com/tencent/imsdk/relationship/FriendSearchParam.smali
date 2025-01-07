.class public Lcom/tencent/imsdk/relationship/FriendSearchParam;
.super Ljava/lang/Object;
.source "FriendSearchParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FIELD_ID_NICK_NAME:I = 0x2

.field public static final FIELD_ID_REMARK:I = 0x4

.field public static final FIELD_ID_USER_ID:I = 0x1


# instance fields
.field private keywordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchFieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/relationship/FriendSearchParam;->searchFieldList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSearchField(I)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendSearchParam;->searchFieldList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getKeywordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendSearchParam;->keywordList:Ljava/util/List;

    return-object v0
.end method

.method public removeSearchField(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendSearchParam;->searchFieldList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setKeywordList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendSearchParam;->keywordList:Ljava/util/List;

    return-void
.end method
