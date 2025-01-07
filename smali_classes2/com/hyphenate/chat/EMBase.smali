.class Lcom/hyphenate/chat/EMBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected emaObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMBase;->emaObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/hyphenate/chat/adapter/EMABase;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/hyphenate/chat/EMBase;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/hyphenate/chat/EMBase;

    iget-object p1, p1, Lcom/hyphenate/chat/EMBase;->emaObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hyphenate/chat/adapter/EMABase;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/hyphenate/chat/adapter/EMABase;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMBase;->emaObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/hyphenate/chat/adapter/EMABase;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
