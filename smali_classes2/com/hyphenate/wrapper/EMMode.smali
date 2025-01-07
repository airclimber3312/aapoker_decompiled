.class public Lcom/hyphenate/wrapper/EMMode;
.super Ljava/lang/Object;
.source "EMMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intFromMarkType(Lcom/hyphenate/chat/EMConversation$EMMarkType;)I
    .locals 1

    .line 66
    sget-object v0, Lcom/hyphenate/wrapper/EMMode$1;->$SwitchMap$com$hyphenate$chat$EMConversation$EMMarkType:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation$EMMarkType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x13

    return p0

    :pswitch_1
    const/16 p0, 0x12

    return p0

    :pswitch_2
    const/16 p0, 0x11

    return p0

    :pswitch_3
    const/16 p0, 0x10

    return p0

    :pswitch_4
    const/16 p0, 0xf

    return p0

    :pswitch_5
    const/16 p0, 0xe

    return p0

    :pswitch_6
    const/16 p0, 0xd

    return p0

    :pswitch_7
    const/16 p0, 0xc

    return p0

    :pswitch_8
    const/16 p0, 0xb

    return p0

    :pswitch_9
    const/16 p0, 0xa

    return p0

    :pswitch_a
    const/16 p0, 0x9

    return p0

    :pswitch_b
    const/16 p0, 0x8

    return p0

    :pswitch_c
    const/4 p0, 0x7

    return p0

    :pswitch_d
    const/4 p0, 0x6

    return p0

    :pswitch_e
    const/4 p0, 0x5

    return p0

    :pswitch_f
    const/4 p0, 0x4

    return p0

    :pswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_11
    const/4 p0, 0x2

    return p0

    :pswitch_12
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static markTypeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMMarkType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 61
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_0:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 59
    :pswitch_0
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_19:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 57
    :pswitch_1
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_18:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 55
    :pswitch_2
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_17:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 53
    :pswitch_3
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_16:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 51
    :pswitch_4
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_15:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 49
    :pswitch_5
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_14:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 47
    :pswitch_6
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_13:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 45
    :pswitch_7
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_12:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 43
    :pswitch_8
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_11:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 41
    :pswitch_9
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_10:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 39
    :pswitch_a
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_9:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 37
    :pswitch_b
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_8:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 35
    :pswitch_c
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_7:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 33
    :pswitch_d
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_6:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 31
    :pswitch_e
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_5:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 29
    :pswitch_f
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_4:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 27
    :pswitch_10
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_3:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 25
    :pswitch_11
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_2:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 23
    :pswitch_12
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_1:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    .line 21
    :pswitch_13
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMarkType;->MARK_0:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static searchScopeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;
    .locals 1

    if-nez p0, :cond_0

    .line 8
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->CONTENT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 10
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->EXT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 12
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->ALL:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    return-object p0

    .line 14
    :cond_2
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->CONTENT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    return-object p0
.end method
