.class public final enum Lcom/tendcloud/tenddata/game/az$b;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum AES_DATA_ENTRYCP_LOCK:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum AES_DATA_LOCK:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum AES_IV_LOCK:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum AES_SALT_LOCK:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum AntiCheating_Data_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum AntiCheating_Switch_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum App_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum App_SQL_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum BG_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum BIO_Text_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum BIO_Touch_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum CSP_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum Cloud_Control_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum EAuth_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum Env_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum Fintech_Data_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum Fintech_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum Game_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum Push_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum SMS_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum SMS_Model_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

.field public static final enum Tracking_Lock_File:Lcom/tendcloud/tenddata/game/az$b;


# instance fields
.field private final filePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 20
    new-instance v0, Lcom/tendcloud/tenddata/game/az$b;

    const-string v1, "Cloud_Control_Cache_Param"

    const-string v2, "Cloud_Control_Lock_File"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/az$b;->Cloud_Control_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 21
    new-instance v1, Lcom/tendcloud/tenddata/game/az$b;

    const-string v2, "AntiCheating_Switch_Value"

    const-string v4, "AntiCheating_Switch_Lock_File"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/game/az$b;->AntiCheating_Switch_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 22
    new-instance v2, Lcom/tendcloud/tenddata/game/az$b;

    const-string v4, "__App_Synchronous_Lock__"

    const-string v6, "App_Lock_File"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tendcloud/tenddata/game/az$b;->App_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 23
    new-instance v4, Lcom/tendcloud/tenddata/game/az$b;

    const-string v6, "__Tracking_Synchronous_Lock__"

    const-string v8, "Tracking_Lock_File"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tendcloud/tenddata/game/az$b;->Tracking_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 24
    new-instance v6, Lcom/tendcloud/tenddata/game/az$b;

    const-string v8, "__Env_Synchronous_Lock__"

    const-string v10, "Env_Lock_File"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tendcloud/tenddata/game/az$b;->Env_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 25
    new-instance v8, Lcom/tendcloud/tenddata/game/az$b;

    const-string v10, "__Game_Synchronous_Lock__"

    const-string v12, "Game_Lock_File"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/tendcloud/tenddata/game/az$b;->Game_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 26
    new-instance v10, Lcom/tendcloud/tenddata/game/az$b;

    const-string v12, "__Push_Synchronous_Lock__"

    const-string v14, "Push_Lock_File"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/tendcloud/tenddata/game/az$b;->Push_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 27
    new-instance v12, Lcom/tendcloud/tenddata/game/az$b;

    const-string v14, "__SMS_Synchronous_Lock__"

    const-string v15, "SMS_Lock_File"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/tendcloud/tenddata/game/az$b;->SMS_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 28
    new-instance v14, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "__EAuth_Synchronous_Lock__"

    const-string v13, "EAuth_Lock_File"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/tendcloud/tenddata/game/az$b;->EAuth_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 29
    new-instance v13, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "__AppSQL_Synchronous_Lock__"

    const-string v11, "App_SQL_Lock_File"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/tendcloud/tenddata/game/az$b;->App_SQL_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 30
    new-instance v11, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "__BG_Synchronous_Lock__"

    const-string v9, "BG_Lock_File"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/tendcloud/tenddata/game/az$b;->BG_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 31
    new-instance v9, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "__Fintech_Synchronous_Lock__"

    const-string v7, "Fintech_Lock_File"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/tendcloud/tenddata/game/az$b;->Fintech_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 32
    new-instance v7, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "__CSP_Synchronous_Lock__"

    const-string v5, "CSP_Lock_File"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tendcloud/tenddata/game/az$b;->CSP_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 33
    new-instance v5, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "__BIO_Touch_Synchronous_Lock__"

    const-string v3, "BIO_Touch_Lock_File"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tendcloud/tenddata/game/az$b;->BIO_Touch_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 34
    new-instance v3, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "__BIO_Text_Synchronous_Lock__"

    const-string v7, "BIO_Text_Lock_File"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tendcloud/tenddata/game/az$b;->BIO_Text_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 35
    new-instance v7, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "AntiCheating_Data_Value"

    const-string v5, "AntiCheating_Data_Lock_File"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tendcloud/tenddata/game/az$b;->AntiCheating_Data_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 36
    new-instance v5, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "_Fintech_Data_Lock"

    const-string v3, "Fintech_Data_Lock_File"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tendcloud/tenddata/game/az$b;->Fintech_Data_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 37
    new-instance v3, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "_AES_DATA_LOCK"

    const-string v7, "AES_DATA_LOCK"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tendcloud/tenddata/game/az$b;->AES_DATA_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    .line 38
    new-instance v7, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "_AES_DATA_ENTCRYPT_LOCK"

    const-string v5, "AES_DATA_ENTRYCP_LOCK"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tendcloud/tenddata/game/az$b;->AES_DATA_ENTRYCP_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    .line 39
    new-instance v5, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "__SMS_Model_Lock_File"

    const-string v3, "SMS_Model_Lock_File"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tendcloud/tenddata/game/az$b;->SMS_Model_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    .line 41
    new-instance v3, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "_AES_SALT_LOCK"

    const-string v7, "AES_SALT_LOCK"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tendcloud/tenddata/game/az$b;->AES_SALT_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    .line 42
    new-instance v7, Lcom/tendcloud/tenddata/game/az$b;

    const-string v15, "_AES_IV_LOCK"

    const-string v5, "AES_IV_LOCK"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Lcom/tendcloud/tenddata/game/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tendcloud/tenddata/game/az$b;->AES_IV_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    const/16 v5, 0x16

    new-array v5, v5, [Lcom/tendcloud/tenddata/game/az$b;

    const/4 v15, 0x0

    aput-object v0, v5, v15

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    aput-object v7, v5, v3

    .line 19
    sput-object v5, Lcom/tendcloud/tenddata/game/az$b;->$VALUES:[Lcom/tendcloud/tenddata/game/az$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TD"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/az$b;->filePath:Ljava/lang/String;

    return-void
.end method

.method public static getFeatureLockFileName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->BIO_Text_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 86
    :pswitch_2
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->BIO_Touch_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 83
    :pswitch_3
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->CSP_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 80
    :pswitch_4
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->Fintech_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 77
    :pswitch_5
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->BG_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 74
    :pswitch_6
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->App_SQL_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 71
    :pswitch_7
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->EAuth_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 68
    :pswitch_8
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->SMS_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 65
    :pswitch_9
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->Push_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 62
    :pswitch_a
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->Game_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 59
    :pswitch_b
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->Env_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 56
    :pswitch_c
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->Tracking_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 53
    :pswitch_d
    sget-object p0, Lcom/tendcloud/tenddata/game/az$b;->App_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/az$b;
    .locals 1

    .line 19
    const-class v0, Lcom/tendcloud/tenddata/game/az$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/game/az$b;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/az$b;
    .locals 1

    .line 19
    sget-object v0, Lcom/tendcloud/tenddata/game/az$b;->$VALUES:[Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/az$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/az$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/az$b;->filePath:Ljava/lang/String;

    return-object v0
.end method
