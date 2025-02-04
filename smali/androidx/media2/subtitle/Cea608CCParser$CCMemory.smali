.class Landroidx/media2/subtitle/Cea608CCParser$CCMemory;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    .line 536
    iput-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    const/16 v0, 0x22

    new-array v0, v0, [C

    const/16 v1, 0xa0

    .line 542
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 543
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    return-void
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private getLineBuffer(I)Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;
    .locals 3

    .line 690
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 691
    new-instance v1, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    iget-object v2, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 693
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private moveCursorByCol(I)V
    .locals 2

    .line 653
    iget v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/16 v1, 0x20

    invoke-static {v0, p1, v1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorTo(II)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x1

    .line 644
    invoke-static {p1, v1, v0}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    const/16 p1, 0x20

    .line 645
    invoke-static {p2, v1, p1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorToRow(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 649
    invoke-static {p1, v0, v1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    return-void
.end method


# virtual methods
.method bs()V
    .locals 3

    const/4 v0, -0x1

    .line 574
    invoke-direct {p0, v0}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 575
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 576
    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 577
    iget v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    :cond_0
    return-void
.end method

.method cr()V
    .locals 2

    .line 587
    iget v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    return-void
.end method

.method der()V
    .locals 4

    .line 556
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 557
    :goto_0
    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    if-ge v0, v1, :cond_2

    .line 558
    iget-object v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    iget v2, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    .line 559
    iget v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    :goto_1
    iget-object v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    iget v3, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 560
    iget-object v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0, v2}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_2
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_3
    return-void
.end method

.method erase()V
    .locals 3

    const/4 v0, 0x0

    .line 548
    :goto_0
    iget-object v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    .line 549
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 551
    iput v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    const/4 v0, 0x1

    .line 552
    iput v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 634
    iget-object v3, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Landroid/text/SpannableStringBuilder;

    .line 636
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method moveBaselineTo(II)V
    .locals 6

    .line 657
    iget v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, p2, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    move v1, v0

    :cond_2
    const/4 v2, 0x0

    if-ge p1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 672
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget v4, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    .line 677
    iget-object v3, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    sub-int v4, p1, v0

    iget v5, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v0

    aget-object v5, v3, v5

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    sub-int v0, p1, p2

    const/4 v1, 0x0

    if-gt v2, v0, :cond_5

    .line 682
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 684
    iget-object p2, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    array-length v0, p2

    if-ge p1, v0, :cond_6

    .line 685
    aput-object v1, p2, p1

    goto :goto_4

    :cond_6
    return-void
.end method

.method rollUp(I)V
    .locals 5

    const/4 v0, 0x0

    .line 592
    :goto_0
    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    sub-int v2, v1, p1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    .line 593
    iget-object v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    if-ge v1, p1, :cond_1

    const/4 v1, 0x1

    .line 599
    :cond_1
    :goto_1
    iget v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    if-ge v1, v0, :cond_2

    .line 600
    iget-object v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    add-int/lit8 v2, v1, 0x1

    aget-object v4, v0, v2

    aput-object v4, v0, v1

    move v1, v2

    goto :goto_1

    .line 602
    :cond_2
    :goto_2
    iget-object v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 604
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 607
    :cond_3
    iput p1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method tab(I)V
    .locals 0

    .line 570
    invoke-direct {p0, p1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writeMidRowCode(Landroidx/media2/subtitle/Cea608CCParser$StyleCode;)V
    .locals 2

    .line 618
    iget v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->setMidRowAt(ILandroidx/media2/subtitle/Cea608CCParser$StyleCode;)V

    const/4 p1, 0x1

    .line 619
    invoke-direct {p0, p1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writePAC(Landroidx/media2/subtitle/Cea608CCParser$PAC;)V
    .locals 2

    .line 623
    invoke-virtual {p1}, Landroidx/media2/subtitle/Cea608CCParser$PAC;->isIndentPAC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p1}, Landroidx/media2/subtitle/Cea608CCParser$PAC;->getRow()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media2/subtitle/Cea608CCParser$PAC;->getCol()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/subtitle/Cea608CCParser$PAC;->getRow()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    .line 628
    :goto_0
    iget v0, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->setPACAt(ILandroidx/media2/subtitle/Cea608CCParser$PAC;)V

    return-void
.end method

.method writeText(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 611
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 612
    iget v1, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/media2/subtitle/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    .line 613
    invoke-direct {p0, v1}, Landroidx/media2/subtitle/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
