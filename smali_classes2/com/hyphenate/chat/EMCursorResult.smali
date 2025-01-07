.class public Lcom/hyphenate/chat/EMCursorResult;
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
.field private cursor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMResult;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hyphenate/chat/EMCursorResult;->cursor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCursor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCursorResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMResult;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setCursor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMCursorResult;->cursor:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMResult;->setData(Ljava/lang/Object;)V

    return-void
.end method
