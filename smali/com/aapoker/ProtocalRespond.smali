.class public Lcom/aapoker/ProtocalRespond;
.super Ljava/lang/Object;
.source "ProtocalRespond.java"


# instance fields
.field private content:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aapoker/ProtocalRespond;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aapoker/ProtocalRespond;->type:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/ProtocalRespond;->content:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/aapoker/ProtocalRespond;->type:I

    return-void
.end method
