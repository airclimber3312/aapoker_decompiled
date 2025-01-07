.class public Lcom/tencent/imsdk/relationship/FriendResponse;
.super Ljava/lang/Object;
.source "FriendResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RESPONSE_AGREE:I = 0x1

.field public static final RESPONSE_AGREE_AND_ADD:I = 0x2

.field public static final RESPONSE_REJECT:I = 0x3


# instance fields
.field private remark:Ljava/lang/String;

.field private responseType:I

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendResponse;->remark:Ljava/lang/String;

    return-void
.end method

.method public setResponseType(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/tencent/imsdk/relationship/FriendResponse;->responseType:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendResponse;->userID:Ljava/lang/String;

    return-void
.end method
