.class public Lcom/tencent/imsdk/group/GroupInfoChangeItem;
.super Ljava/lang/Object;
.source "GroupInfoChangeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private boolValueChanged:Z

.field private customInfoKey:Ljava/lang/String;

.field private groupInfoChangeType:I

.field private intValueChanged:I

.field private valueChanged:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolValueChanged()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->boolValueChanged:Z

    return v0
.end method

.method public getCustomInfoKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->customInfoKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfoChangeType()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->groupInfoChangeType:I

    return v0
.end method

.method public getIntValueChanged()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->intValueChanged:I

    return v0
.end method

.method public getValueChanged()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->valueChanged:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomInfoKey(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->customInfoKey:Ljava/lang/String;

    return-void
.end method

.method public setGroupInfoChangeType(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->groupInfoChangeType:I

    return-void
.end method

.method public setValueChanged(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->valueChanged:Ljava/lang/String;

    return-void
.end method
