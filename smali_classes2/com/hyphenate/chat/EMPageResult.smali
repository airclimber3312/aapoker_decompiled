.class public Lcom/hyphenate/chat/EMPageResult;
.super Lcom/hyphenate/chat/EMResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hyphenate/chat/EMResult<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private pageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMResult;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMResult;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMPageResult;->pageCount:I

    return v0
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMResult;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/chat/EMPageResult;->pageCount:I

    return-void
.end method
