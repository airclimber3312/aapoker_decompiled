.class Landroidx/media2/subtitle/Cea608CCParser$CCData;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCData"
.end annotation


# static fields
.field private static final sCtrlCodeMap:[Ljava/lang/String;

.field private static final sProtugueseCharMap:[Ljava/lang/String;

.field private static final sSpanishCharMap:[Ljava/lang/String;

.field private static final sSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const-string v0, "RCL"

    const-string v1, "BS"

    const-string v2, "AOF"

    const-string v3, "AON"

    const-string v4, "DER"

    const-string v5, "RU2"

    const-string v6, "RU3"

    const-string v7, "RU4"

    const-string v8, "FON"

    const-string v9, "RDC"

    const-string v10, "TR"

    const-string v11, "RTD"

    const-string v12, "EDM"

    const-string v13, "CR"

    const-string v14, "ENM"

    const-string v15, "EOC"

    .line 706
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->sCtrlCodeMap:[Ljava/lang/String;

    const-string/jumbo v1, "\u00ae"

    const-string/jumbo v2, "\u00b0"

    const-string/jumbo v3, "\u00bd"

    const-string/jumbo v4, "\u00bf"

    const-string/jumbo v5, "\u2122"

    const-string/jumbo v6, "\u00a2"

    const-string/jumbo v7, "\u00a3"

    const-string/jumbo v8, "\u266a"

    const-string/jumbo v9, "\u00e0"

    const-string/jumbo v10, "\u00a0"

    const-string/jumbo v11, "\u00e8"

    const-string/jumbo v12, "\u00e2"

    const-string/jumbo v13, "\u00ea"

    const-string/jumbo v14, "\u00ee"

    const-string/jumbo v15, "\u00f4"

    const-string/jumbo v16, "\u00fb"

    .line 713
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->sSpecialCharMap:[Ljava/lang/String;

    const-string/jumbo v1, "\u00c1"

    const-string/jumbo v2, "\u00c9"

    const-string/jumbo v3, "\u00d3"

    const-string/jumbo v4, "\u00da"

    const-string/jumbo v5, "\u00dc"

    const-string/jumbo v6, "\u00fc"

    const-string/jumbo v7, "\u2018"

    const-string/jumbo v8, "\u00a1"

    const-string v9, "*"

    const-string v10, "\'"

    const-string/jumbo v11, "\u2014"

    const-string/jumbo v12, "\u00a9"

    const-string/jumbo v13, "\u2120"

    const-string/jumbo v14, "\u2022"

    const-string/jumbo v15, "\u201c"

    const-string/jumbo v16, "\u201d"

    const-string/jumbo v17, "\u00c0"

    const-string/jumbo v18, "\u00c2"

    const-string/jumbo v19, "\u00c7"

    const-string/jumbo v20, "\u00c8"

    const-string/jumbo v21, "\u00ca"

    const-string/jumbo v22, "\u00cb"

    const-string/jumbo v23, "\u00eb"

    const-string/jumbo v24, "\u00ce"

    const-string/jumbo v25, "\u00cf"

    const-string/jumbo v26, "\u00ef"

    const-string/jumbo v27, "\u00d4"

    const-string/jumbo v28, "\u00d9"

    const-string/jumbo v29, "\u00f9"

    const-string/jumbo v30, "\u00db"

    const-string/jumbo v31, "\u00ab"

    const-string/jumbo v32, "\u00bb"

    .line 732
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->sSpanishCharMap:[Ljava/lang/String;

    const-string/jumbo v1, "\u00c3"

    const-string/jumbo v2, "\u00e3"

    const-string/jumbo v3, "\u00cd"

    const-string/jumbo v4, "\u00cc"

    const-string/jumbo v5, "\u00ec"

    const-string/jumbo v6, "\u00d2"

    const-string/jumbo v7, "\u00f2"

    const-string/jumbo v8, "\u00d5"

    const-string/jumbo v9, "\u00f5"

    const-string/jumbo v10, "{"

    const-string/jumbo v11, "}"

    const-string v12, "\\"

    const-string v13, "^"

    const-string v14, "_"

    const-string/jumbo v15, "|"

    const-string/jumbo v16, "~"

    const-string/jumbo v17, "\u00c4"

    const-string/jumbo v18, "\u00e4"

    const-string/jumbo v19, "\u00d6"

    const-string/jumbo v20, "\u00f6"

    const-string/jumbo v21, "\u00df"

    const-string/jumbo v22, "\u00a5"

    const-string/jumbo v23, "\u00a4"

    const-string/jumbo v24, "\u2502"

    const-string/jumbo v25, "\u00c5"

    const-string/jumbo v26, "\u00e5"

    const-string/jumbo v27, "\u00d8"

    const-string/jumbo v28, "\u00f8"

    const-string/jumbo v29, "\u250c"

    const-string/jumbo v30, "\u2510"

    const-string/jumbo v31, "\u2514"

    const-string/jumbo v32, "\u2518"

    .line 769
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->sProtugueseCharMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(BBB)V
    .locals 0

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    iput-byte p1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mType:B

    .line 821
    iput-byte p2, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    .line 822
    iput-byte p3, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    return-void
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .locals 1

    .line 879
    sget-object v0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->sCtrlCodeMap:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x20

    aget-object p1, v0, p1

    return-object p1
.end method

.method static fromByteArray([B)[Landroidx/media2/subtitle/Cea608CCParser$CCData;
    .locals 7

    .line 807
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    new-array v1, v0, [Landroidx/media2/subtitle/Cea608CCParser$CCData;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 810
    new-instance v3, Landroidx/media2/subtitle/Cea608CCParser$CCData;

    mul-int/lit8 v4, v2, 0x3

    aget-byte v5, p0, v4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p0, v4

    invoke-direct {v3, v5, v6, v4}, Landroidx/media2/subtitle/Cea608CCParser$CCData;-><init>(BBB)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getBasicChar(B)C
    .locals 1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    int-to-char p1, p1

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x2588

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xf1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xd1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xf7

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xe7

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xfa

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xf3

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xed

    goto :goto_0

    :cond_0
    const/16 p1, 0xe9

    goto :goto_0

    :cond_1
    const/16 p1, 0xe1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .locals 4

    .line 917
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_1

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 919
    iget-byte v3, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    invoke-direct {p0, v3}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    iget-byte v3, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    if-lt v3, v1, :cond_0

    if-gt v3, v2, :cond_0

    .line 921
    invoke-direct {p0, v3}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getExtendedChar()Ljava/lang/String;
    .locals 4

    .line 939
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    const/16 v2, 0x3f

    const/16 v3, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    if-lt v1, v3, :cond_1

    if-gt v1, v2, :cond_1

    .line 941
    sget-object v0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->sSpanishCharMap:[Ljava/lang/String;

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_3

    .line 942
    :cond_2
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    if-lt v0, v3, :cond_3

    if-gt v0, v2, :cond_3

    .line 944
    sget-object v1, Landroidx/media2/subtitle/Cea608CCParser$CCData;->sProtugueseCharMap:[Ljava/lang/String;

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .locals 3

    .line 930
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_1

    .line 932
    sget-object v2, Landroidx/media2/subtitle/Cea608CCParser$CCData;->sSpecialCharMap:[Ljava/lang/String;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBasicChar()Z
    .locals 2

    .line 883
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSpecialChar()Z
    .locals 2

    .line 887
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getCtrlCode()I
    .locals 2

    .line 826
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getDisplayText()Ljava/lang/String;
    .locals 1

    .line 865
    invoke-direct {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getBasicChars()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 868
    invoke-direct {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 871
    invoke-direct {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getMidRow()Landroidx/media2/subtitle/Cea608CCParser$StyleCode;
    .locals 2

    .line 836
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    .line 838
    invoke-static {v0}, Landroidx/media2/subtitle/Cea608CCParser$StyleCode;->fromByte(B)Landroidx/media2/subtitle/Cea608CCParser$StyleCode;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getPAC()Landroidx/media2/subtitle/Cea608CCParser$PAC;
    .locals 4

    .line 844
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-byte v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_1

    .line 847
    :cond_0
    invoke-static {v0, v1}, Landroidx/media2/subtitle/Cea608CCParser$PAC;->fromBytes(BB)Landroidx/media2/subtitle/Cea608CCParser$PAC;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTabOffset()I
    .locals 2

    .line 853
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const/16 v1, 0x23

    if-gt v0, v1, :cond_1

    and-int/lit8 v0, v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isDisplayableChar()Z
    .locals 1

    .line 861
    invoke-direct {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->isBasicChar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->isSpecialChar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isExtendedChar()Z
    .locals 2

    .line 892
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 954
    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x10

    if-ge v0, v5, :cond_0

    iget-byte v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    if-ge v0, v5, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 956
    iget-byte v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "[%d]Null: %02x %02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 959
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    .line 961
    iget-byte v4, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-direct {p0, v0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "[%d]%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 964
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getTabOffset()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v4, [Ljava/lang/Object;

    .line 966
    iget-byte v4, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "[%d]Tab%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 969
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getPAC()Landroidx/media2/subtitle/Cea608CCParser$PAC;

    move-result-object v0

    if-eqz v0, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    .line 971
    iget-byte v4, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0}, Landroidx/media2/subtitle/Cea608CCParser$PAC;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "[%d]PAC: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 974
    :cond_3
    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getMidRow()Landroidx/media2/subtitle/Cea608CCParser$StyleCode;

    move-result-object v0

    if-eqz v0, :cond_4

    new-array v1, v4, [Ljava/lang/Object;

    .line 976
    iget-byte v4, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0}, Landroidx/media2/subtitle/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "[%d]Mid-row: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 979
    :cond_4
    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 980
    iget-byte v5, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mType:B

    .line 981
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-byte v2, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v4

    iget-byte v2, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "[%d]Displayable: %s (%02x %02x)"

    .line 980
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    .line 984
    iget-byte v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCData;->mData2:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "[%d]Invalid: %02x %02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
