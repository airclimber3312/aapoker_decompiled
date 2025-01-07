.class public Lcom/tencent/imsdk/relationship/UserStatus;
.super Ljava/lang/Object;
.source "UserStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private customStatus:Ljava/lang/String;

.field private statusType:I

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomStatus()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserStatus;->customStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/tencent/imsdk/relationship/UserStatus;->statusType:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserStatus;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomStatus(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/UserStatus;->customStatus:Ljava/lang/String;

    return-void
.end method
