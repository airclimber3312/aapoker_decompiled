.class synthetic Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;
.super Ljava/lang/Object;
.source "EMMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/wrapper/helper/EMMessageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

.field static final synthetic $SwitchMap$com$hyphenate$chat$EMMessage$Status:[I

.field static final synthetic $SwitchMap$com$hyphenate$chat$EMMessage$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 385
    invoke-static {}, Lcom/hyphenate/chat/EMMessage$Status;->values()[Lcom/hyphenate/chat/EMMessage$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Status:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hyphenate/chat/EMMessage$Status;->CREATE:Lcom/hyphenate/chat/EMMessage$Status;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$Status;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Status:[I

    sget-object v3, Lcom/hyphenate/chat/EMMessage$Status;->INPROGRESS:Lcom/hyphenate/chat/EMMessage$Status;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage$Status;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Status:[I

    sget-object v4, Lcom/hyphenate/chat/EMMessage$Status;->SUCCESS:Lcom/hyphenate/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMMessage$Status;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Status:[I

    sget-object v5, Lcom/hyphenate/chat/EMMessage$Status;->FAIL:Lcom/hyphenate/chat/EMMessage$Status;

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMMessage$Status;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 359
    :catch_3
    invoke-static {}, Lcom/hyphenate/chat/EMMessage$ChatType;->values()[Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    :try_start_4
    sget-object v5, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    sget-object v5, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    sget-object v5, Lcom/hyphenate/chat/EMMessage$ChatType;->ChatRoom:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 237
    :catch_6
    invoke-static {}, Lcom/hyphenate/chat/EMMessage$Type;->values()[Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    :try_start_7
    sget-object v5, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    sget-object v4, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
