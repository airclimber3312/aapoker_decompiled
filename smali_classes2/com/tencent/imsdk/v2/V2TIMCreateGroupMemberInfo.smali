.class public Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;
.super Ljava/lang/Object;
.source "V2TIMCreateGroupMemberInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private customInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private role:I

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->role:I

    return-void
.end method


# virtual methods
.method getRole()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->role:I

    return v0
.end method

.method getUserID()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setRole(I)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 36
    :cond_0
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->role:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->userID:Ljava/lang/String;

    return-void
.end method
