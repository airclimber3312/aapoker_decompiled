.class public Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;
.super Ljava/lang/Object;
.source "ProtocalIMMes.java"


# instance fields
.field private duration:J

.field private headPic:Ljava/lang/String;

.field private mesContent:Ljava/lang/String;

.field private mesType:I

.field private nick:Ljava/lang/String;

.field private sender:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->duration:J

    return-wide v0
.end method

.method public getHeadPic()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->headPic:Ljava/lang/String;

    return-object v0
.end method

.method public getMesContent()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->mesContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMesType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->mesType:I

    return v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->duration:J

    return-void
.end method

.method public setHeadPic(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->headPic:Ljava/lang/String;

    return-void
.end method

.method public setMesContent(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->mesContent:Ljava/lang/String;

    return-void
.end method

.method public setMesType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->mesType:I

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->nick:Ljava/lang/String;

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->sender:Ljava/lang/String;

    return-void
.end method
