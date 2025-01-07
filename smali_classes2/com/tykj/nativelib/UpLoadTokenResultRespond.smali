.class public Lcom/tykj/nativelib/UpLoadTokenResultRespond;
.super Ljava/lang/Object;
.source "UpLoadTokenResultRespond.java"


# instance fields
.field public data:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetStatus()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/tykj/nativelib/UpLoadTokenResultRespond;->status:I

    return v0
.end method

.method public GetToken()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/tykj/nativelib/UpLoadTokenResultRespond;->data:Ljava/lang/String;

    return-object v0
.end method
