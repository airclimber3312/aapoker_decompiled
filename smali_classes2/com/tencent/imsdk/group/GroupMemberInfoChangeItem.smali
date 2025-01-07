.class public Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;
.super Ljava/lang/Object;
.source "GroupMemberInfoChangeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private shutUpTime:J

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShutUpTime()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;->shutUpTime:J

    return-wide v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;->userID:Ljava/lang/String;

    return-object v0
.end method
