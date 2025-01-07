.class public Lcom/hyphenate/chat/EMRecallMessageInfo;
.super Ljava/lang/Object;


# instance fields
.field protected ext:Ljava/lang/String;

.field protected recallBy:Ljava/lang/String;

.field protected recallMessage:Lcom/hyphenate/chat/EMMessage;

.field protected recallMessageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMRecallMessageInfo;->recallBy:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/chat/EMRecallMessageInfo;->recallMessageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMRecallMessageInfo;->recallMessage:Lcom/hyphenate/chat/EMMessage;

    iput-object p4, p0, Lcom/hyphenate/chat/EMRecallMessageInfo;->ext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMRecallMessageInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getRecallBy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMRecallMessageInfo;->recallBy:Ljava/lang/String;

    return-object v0
.end method

.method public getRecallMessage()Lcom/hyphenate/chat/EMMessage;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMRecallMessageInfo;->recallMessage:Lcom/hyphenate/chat/EMMessage;

    return-object v0
.end method

.method public getRecallMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMRecallMessageInfo;->recallMessageId:Ljava/lang/String;

    return-object v0
.end method
