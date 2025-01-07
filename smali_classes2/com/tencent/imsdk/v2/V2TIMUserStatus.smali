.class public Lcom/tencent/imsdk/v2/V2TIMUserStatus;
.super Ljava/lang/Object;
.source "V2TIMUserStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_USER_STATUS_OFFLINE:I = 0x2

.field public static final V2TIM_USER_STATUS_ONLINE:I = 0x1

.field public static final V2TIM_USER_STATUS_UNKNOWN:I = 0x0

.field public static final V2TIM_USER_STATUS_UNLOGINED:I = 0x3


# instance fields
.field private userStatus:Lcom/tencent/imsdk/relationship/UserStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/tencent/imsdk/relationship/UserStatus;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/UserStatus;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->userStatus:Lcom/tencent/imsdk/relationship/UserStatus;

    return-void
.end method


# virtual methods
.method public getCustomStatus()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->userStatus:Lcom/tencent/imsdk/relationship/UserStatus;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserStatus;->getCustomStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusType()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->userStatus:Lcom/tencent/imsdk/relationship/UserStatus;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserStatus;->getStatusType()I

    move-result v0

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->userStatus:Lcom/tencent/imsdk/relationship/UserStatus;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserStatus;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserStatus()Lcom/tencent/imsdk/relationship/UserStatus;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->userStatus:Lcom/tencent/imsdk/relationship/UserStatus;

    return-object v0
.end method

.method public setCustomStatus(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->userStatus:Lcom/tencent/imsdk/relationship/UserStatus;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserStatus;->setCustomStatus(Ljava/lang/String;)V

    return-void
.end method

.method setUserStatus(Lcom/tencent/imsdk/relationship/UserStatus;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->userStatus:Lcom/tencent/imsdk/relationship/UserStatus;

    return-void
.end method
