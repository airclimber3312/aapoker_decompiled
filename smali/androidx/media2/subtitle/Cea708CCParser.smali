.class Landroidx/media2/subtitle/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;,
        Landroidx/media2/subtitle/Cea708CCParser$CaptionWindowAttr;,
        Landroidx/media2/subtitle/Cea708CCParser$CaptionPenLocation;,
        Landroidx/media2/subtitle/Cea708CCParser$CaptionPenColor;,
        Landroidx/media2/subtitle/Cea708CCParser$CaptionPenAttr;,
        Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;,
        Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;,
        Landroidx/media2/subtitle/Cea708CCParser$Const;,
        Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mCommand:I

.field private mListener:Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "\u266b"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroidx/media2/subtitle/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    .line 109
    new-instance v0, Landroidx/media2/subtitle/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroidx/media2/subtitle/Cea708CCParser$1;-><init>(Landroidx/media2/subtitle/Cea708CCParser;)V

    iput-object v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mListener:Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;

    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Landroidx/media2/subtitle/Cea708CCParser;->mListener:Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;

    :cond_0
    return-void
.end method

.method private emitCaptionBuffer()V
    .locals 4

    .line 168
    iget-object v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mListener:Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;

    new-instance v1, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    iget-object v2, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;->emitEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    .line 170
    iget-object v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method

.method private emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionBuffer()V

    .line 164
    iget-object v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mListener:Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;

    invoke-interface {v0, p1}, Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;->emitEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    return-void
.end method

.method private parseC0([BI)I
    .locals 3

    .line 228
    iget v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 234
    :try_start_0
    aget-byte v0, p1, p2

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    aget-byte p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v1, "EUC-KR"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 238
    iget-object p1, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Cea708CCParser"

    const-string v1, "P16 Code - Could not find supported encoding"

    .line 241
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_2
    const/16 p1, 0x10

    if-lt v0, p1, :cond_3

    const/16 p1, 0x17

    if-gt v0, p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    const/4 v1, 0x2

    if-eq v0, p1, :cond_5

    const/16 p1, 0x8

    if-eq v0, p1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 270
    :pswitch_0
    new-instance p1, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 267
    :pswitch_1
    iget-object p1, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :pswitch_2
    new-instance p1, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 261
    :cond_4
    new-instance p1, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    .line 258
    :cond_5
    new-instance p1, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    :goto_1
    return p2

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseC1([BI)I
    .locals 25

    move-object/from16 v0, p0

    .line 282
    iget v1, v0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    add-int/lit16 v12, v1, -0x98

    .line 498
    aget-byte v1, p1, p2

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    and-int/lit8 v16, v1, 0x7

    add-int/lit8 v1, p2, 0x1

    .line 502
    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    and-int/lit8 v18, v1, 0x7f

    add-int/lit8 v1, p2, 0x2

    .line 504
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x3

    .line 505
    aget-byte v2, p1, v2

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v20, v4, 0x4

    and-int/lit8 v21, v2, 0xf

    add-int/lit8 v2, p2, 0x4

    .line 507
    aget-byte v2, p1, v2

    and-int/lit8 v22, v2, 0x3f

    add-int/lit8 v2, p2, 0x5

    .line 508
    aget-byte v2, p1, v2

    and-int/lit8 v3, v2, 0x38

    shr-int/lit8 v24, v3, 0x3

    and-int/lit8 v23, v2, 0x7

    add-int/lit8 v2, p2, 0x6

    .line 511
    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    new-instance v4, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;

    move-object v11, v4

    move/from16 v19, v1

    invoke-direct/range {v11 .. v24}, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    const/16 v1, 0x10

    invoke-direct {v3, v1, v4}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_9

    .line 453
    :pswitch_2
    aget-byte v1, p1, p2

    and-int/lit16 v2, v1, 0xc0

    shr-int/2addr v2, v6

    and-int/lit8 v5, v1, 0x30

    shr-int/2addr v5, v8

    and-int/lit8 v11, v1, 0xc

    shr-int/lit8 v11, v11, 0x2

    and-int/2addr v1, v9

    .line 457
    new-instance v13, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v13, v2, v5, v11, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    .line 458
    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xc0

    shr-int/2addr v2, v6

    add-int/lit8 v5, p2, 0x2

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0x80

    shr-int/lit8 v4, v6, 0x5

    or-int v15, v2, v4

    and-int/lit8 v2, v1, 0x30

    shr-int/2addr v2, v8

    and-int/lit8 v4, v1, 0xc

    shr-int/lit8 v4, v4, 0x2

    and-int/2addr v1, v9

    .line 462
    new-instance v14, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v14, v7, v2, v4, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 464
    aget-byte v1, p1, v5

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    and-int/lit8 v2, v1, 0x30

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v2, v1, 0xc

    shr-int/lit8 v18, v2, 0x2

    and-int/lit8 v19, v1, 0x3

    add-int/lit8 v1, p2, 0x3

    .line 468
    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xf0

    shr-int/lit8 v21, v2, 0x4

    and-int/lit8 v2, v1, 0xc

    shr-int/lit8 v20, v2, 0x2

    and-int/lit8 v22, v1, 0x3

    add-int/lit8 v1, p2, 0x4

    .line 472
    new-instance v2, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    new-instance v4, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindowAttr;

    move-object v12, v4

    invoke-direct/range {v12 .. v22}, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindowAttr;-><init>(Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;IZIIIIII)V

    invoke-direct {v2, v3, v4}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_5

    .line 439
    :pswitch_3
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x1

    .line 440
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, p2, 0x2

    .line 442
    new-instance v4, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    new-instance v5, Landroidx/media2/subtitle/Cea708CCParser$CaptionPenLocation;

    invoke-direct {v5, v1, v2}, Landroidx/media2/subtitle/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    const/16 v1, 0xe

    invoke-direct {v4, v1, v5}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    move v2, v3

    goto/16 :goto_9

    .line 408
    :pswitch_4
    aget-byte v1, p1, p2

    and-int/lit16 v2, v1, 0xc0

    shr-int/2addr v2, v6

    and-int/lit8 v3, v1, 0x30

    shr-int/2addr v3, v8

    and-int/lit8 v4, v1, 0xc

    shr-int/lit8 v4, v4, 0x2

    and-int/2addr v1, v9

    .line 412
    new-instance v5, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v5, v2, v3, v4, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    .line 414
    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xc0

    shr-int/2addr v3, v6

    and-int/lit8 v4, v2, 0x30

    shr-int/2addr v4, v8

    and-int/lit8 v6, v2, 0xc

    shr-int/lit8 v6, v6, 0x2

    and-int/2addr v2, v9

    .line 418
    new-instance v11, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v11, v3, v4, v6, v2}, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/2addr v1, v10

    .line 420
    aget-byte v2, p1, v1

    and-int/lit8 v3, v2, 0x30

    shr-int/2addr v3, v8

    and-int/lit8 v4, v2, 0xc

    shr-int/lit8 v4, v4, 0x2

    and-int/2addr v2, v9

    .line 423
    new-instance v6, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;

    invoke-direct {v6, v7, v3, v4, v2}, Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/2addr v1, v10

    .line 426
    new-instance v2, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionPenColor;

    invoke-direct {v3, v5, v11, v6}, Landroidx/media2/subtitle/Cea708CCParser$CaptionPenColor;-><init>(Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;Landroidx/media2/subtitle/Cea708CCParser$CaptionColor;)V

    const/16 v4, 0xd

    invoke-direct {v2, v4, v3}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    :goto_5
    move v2, v1

    goto/16 :goto_9

    .line 386
    :pswitch_5
    aget-byte v1, p1, p2

    and-int/lit16 v2, v1, 0xf0

    shr-int/lit8 v14, v2, 0x4

    and-int/lit8 v12, v1, 0x3

    const/16 v2, 0xc

    and-int/2addr v1, v2

    shr-int/lit8 v13, v1, 0x2

    add-int/lit8 v1, p2, 0x1

    .line 389
    aget-byte v1, p1, v1

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_5

    const/16 v18, 0x1

    goto :goto_6

    :cond_5
    const/16 v18, 0x0

    :goto_6
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    const/16 v17, 0x1

    goto :goto_7

    :cond_6
    const/16 v17, 0x0

    :goto_7
    and-int/lit8 v3, v1, 0x38

    shr-int/lit8 v16, v3, 0x3

    and-int/lit8 v15, v1, 0x7

    add-int/lit8 v1, p2, 0x2

    .line 394
    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    new-instance v4, Landroidx/media2/subtitle/Cea708CCParser$CaptionPenAttr;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Landroidx/media2/subtitle/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    invoke-direct {v3, v2, v4}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_5

    .line 377
    :pswitch_6
    new-instance v1, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xb

    invoke-direct {v1, v3, v2}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_8

    .line 368
    :pswitch_7
    new-instance v1, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_8

    .line 357
    :pswitch_8
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 359
    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 346
    :pswitch_9
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 348
    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 335
    :pswitch_a
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 337
    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 324
    :pswitch_b
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 326
    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v6, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 313
    :pswitch_c
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 315
    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    .line 302
    :pswitch_d
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 304
    new-instance v3, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v8, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    goto :goto_9

    :pswitch_e
    add-int/lit8 v1, v1, -0x80

    .line 293
    new-instance v2, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    :goto_8
    move/from16 v2, p2

    :goto_9
    return v2

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseC2([BI)I
    .locals 1

    .line 581
    iget p1, p0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-lt p1, v0, :cond_2

    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    add-int/lit8 p2, p2, 0x3

    :cond_3
    :goto_0
    return p2
.end method

.method private parseC3([BI)I
    .locals 1

    .line 601
    iget p1, p0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x88

    if-lt p1, v0, :cond_1

    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    add-int/lit8 p2, p2, 0x5

    :cond_1
    :goto_0
    return p2
.end method

.method private parseExt1([BI)I
    .locals 3

    .line 559
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    .line 563
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseC2([BI)I

    move-result p2

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_1

    .line 566
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2

    .line 569
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseG2([BI)I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3

    if-gt v0, v1, :cond_3

    .line 572
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseG3([BI)I

    move-result p2

    :cond_3
    :goto_0
    return p2
.end method

.method private parseG0([BI)I
    .locals 1

    .line 538
    iget p1, p0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 540
    iget-object p1, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/media2/subtitle/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return p2
.end method

.method private parseG1([BI)I
    .locals 1

    .line 552
    iget-object p1, p0, Landroidx/media2/subtitle/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return p2
.end method

.method private parseG2([BI)I
    .locals 0

    return p2
.end method

.method private parseG3([BI)I
    .locals 0

    return p2
.end method

.method private parseServiceBlockData([BI)I
    .locals 3

    .line 190
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/subtitle/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 196
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    .line 202
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_0

    :cond_1
    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2

    .line 208
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_3

    .line 214
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseG0([BI)I

    move-result p2

    goto :goto_0

    :cond_3
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_4

    if-gt v0, v1, :cond_4

    .line 220
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/Cea708CCParser;->parseG1([BI)I

    move-result p2

    :cond_4
    :goto_0
    return p2
.end method


# virtual methods
.method public parse([B)V
    .locals 2

    const/4 v0, 0x0

    .line 179
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 180
    invoke-direct {p0, p1, v0}, Landroidx/media2/subtitle/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {p0}, Landroidx/media2/subtitle/Cea708CCParser;->emitCaptionBuffer()V

    return-void
.end method
