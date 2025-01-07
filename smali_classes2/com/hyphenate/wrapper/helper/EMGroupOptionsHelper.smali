.class public Lcom/hyphenate/wrapper/helper/EMGroupOptionsHelper;
.super Ljava/lang/Object;
.source "EMGroupOptionsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMGroupOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/hyphenate/chat/EMGroupOptions;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMGroupOptions;-><init>()V

    const-string v1, "maxCount"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hyphenate/chat/EMGroupOptions;->maxUsers:I

    const-string v1, "inviteNeedConfirm"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/hyphenate/chat/EMGroupOptions;->inviteNeedConfirm:Z

    const-string v1, "ext"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hyphenate/chat/EMGroupOptions;->extField:Ljava/lang/String;

    :cond_0
    const-string v1, "style"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMGroupOptionsHelper;->styleFromInt(I)Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    move-result-object p0

    iput-object p0, v0, Lcom/hyphenate/chat/EMGroupOptions;->style:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    return-object v0
.end method

.method public static styleFromInt(I)Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 43
    sget-object p0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    return-object p0

    .line 40
    :cond_0
    sget-object p0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePublicOpenJoin:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    return-object p0

    .line 38
    :cond_1
    sget-object p0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePublicJoinNeedApproval:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    return-object p0

    .line 36
    :cond_2
    sget-object p0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePrivateMemberCanInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    return-object p0

    .line 34
    :cond_3
    sget-object p0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    return-object p0
.end method

.method public static styleToInt(Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;)I
    .locals 2

    .line 47
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMGroupOptionsHelper$1;->$SwitchMap$com$hyphenate$chat$EMGroupManager$EMGroupStyle:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static toJson(Lcom/hyphenate/chat/EMGroupOptions;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "maxCount"

    .line 24
    iget v2, p0, Lcom/hyphenate/chat/EMGroupOptions;->maxUsers:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "inviteNeedConfirm"

    .line 25
    iget-boolean v2, p0, Lcom/hyphenate/chat/EMGroupOptions;->inviteNeedConfirm:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ext"

    .line 26
    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupOptions;->extField:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object p0, p0, Lcom/hyphenate/chat/EMGroupOptions;->style:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMGroupOptionsHelper;->styleToInt(Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;)I

    move-result p0

    const-string v1, "style"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
