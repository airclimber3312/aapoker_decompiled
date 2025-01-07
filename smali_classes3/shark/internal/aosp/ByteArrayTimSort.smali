.class public final Lshark/internal/aosp/ByteArrayTimSort;
.super Ljava/lang/Object;
.source "ByteArrayTimSort.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/internal/aosp/ByteArrayTimSort$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J\u0008\u0010\u0014\u001a\u00020\u0012H\u0002J\u0008\u0010\u0015\u001a\u00020\u0012H\u0002J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0007H\u0002J(\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0007H\u0002J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lshark/internal/aosp/ByteArrayTimSort;",
        "",
        "a",
        "",
        "c",
        "Lshark/internal/aosp/ByteArrayComparator;",
        "entrySize",
        "",
        "([BLshark/internal/aosp/ByteArrayComparator;I)V",
        "minGallop",
        "runBase",
        "",
        "runLen",
        "stackSize",
        "tmp",
        "ensureCapacity",
        "minCapacity",
        "mergeAt",
        "",
        "i",
        "mergeCollapse",
        "mergeForceCollapse",
        "mergeHi",
        "base1",
        "len1",
        "base2",
        "len2",
        "mergeLo",
        "pushRun",
        "Companion",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/internal/aosp/ByteArrayTimSort$Companion;

.field private static final DEBUG:Z

.field private static final INITIAL_TMP_STORAGE_LENGTH:I

.field private static final MIN_GALLOP:I

.field private static final MIN_MERGE:I


# instance fields
.field private final a:[B

.field private final c:Lshark/internal/aosp/ByteArrayComparator;

.field private final entrySize:I

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/internal/aosp/ByteArrayTimSort$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/internal/aosp/ByteArrayTimSort$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/internal/aosp/ByteArrayTimSort;->Companion:Lshark/internal/aosp/ByteArrayTimSort$Companion;

    const/16 v0, 0x20

    .line 612
    sput v0, Lshark/internal/aosp/ByteArrayTimSort;->MIN_MERGE:I

    const/4 v0, 0x7

    .line 618
    sput v0, Lshark/internal/aosp/ByteArrayTimSort;->MIN_GALLOP:I

    const/16 v0, 0x100

    .line 627
    sput v0, Lshark/internal/aosp/ByteArrayTimSort;->INITIAL_TMP_STORAGE_LENGTH:I

    return-void
.end method

.method private constructor <init>([BLshark/internal/aosp/ByteArrayComparator;I)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/internal/aosp/ByteArrayTimSort;->a:[B

    iput-object p2, p0, Lshark/internal/aosp/ByteArrayTimSort;->c:Lshark/internal/aosp/ByteArrayComparator;

    iput p3, p0, Lshark/internal/aosp/ByteArrayTimSort;->entrySize:I

    .line 82
    sget p2, Lshark/internal/aosp/ByteArrayTimSort;->MIN_GALLOP:I

    iput p2, p0, Lshark/internal/aosp/ByteArrayTimSort;->minGallop:I

    .line 105
    array-length p1, p1

    div-int/2addr p1, p3

    .line 108
    sget p2, Lshark/internal/aosp/ByteArrayTimSort;->INITIAL_TMP_STORAGE_LENGTH:I

    mul-int/lit8 v0, p2, 0x2

    if-ge p1, v0, :cond_0

    ushr-int/lit8 p2, p1, 0x1

    :cond_0
    mul-int p3, p3, p2

    .line 107
    new-array p2, p3, [B

    .line 113
    iput-object p2, p0, Lshark/internal/aosp/ByteArrayTimSort;->tmp:[B

    const/16 p2, 0x78

    if-ge p1, p2, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/16 p2, 0x606

    if-ge p1, p2, :cond_2

    const/16 p1, 0xa

    goto :goto_0

    :cond_2
    const p2, 0x1d16f

    if-ge p1, p2, :cond_3

    const/16 p1, 0x13

    goto :goto_0

    :cond_3
    const/16 p1, 0x28

    .line 129
    :goto_0
    new-array p2, p1, [I

    iput-object p2, p0, Lshark/internal/aosp/ByteArrayTimSort;->runBase:[I

    .line 130
    new-array p1, p1, [I

    iput-object p1, p0, Lshark/internal/aosp/ByteArrayTimSort;->runLen:[I

    return-void
.end method

.method public synthetic constructor <init>([BLshark/internal/aosp/ByteArrayComparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lshark/internal/aosp/ByteArrayTimSort;-><init>([BLshark/internal/aosp/ByteArrayComparator;I)V

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    .line 58
    sget-boolean v0, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getMIN_MERGE$cp()I
    .locals 1

    .line 58
    sget v0, Lshark/internal/aosp/ByteArrayTimSort;->MIN_MERGE:I

    return v0
.end method

.method public static final synthetic access$getStackSize$p(Lshark/internal/aosp/ByteArrayTimSort;)I
    .locals 0

    .line 58
    iget p0, p0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    return p0
.end method

.method public static final synthetic access$mergeCollapse(Lshark/internal/aosp/ByteArrayTimSort;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lshark/internal/aosp/ByteArrayTimSort;->mergeCollapse()V

    return-void
.end method

.method public static final synthetic access$mergeForceCollapse(Lshark/internal/aosp/ByteArrayTimSort;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lshark/internal/aosp/ByteArrayTimSort;->mergeForceCollapse()V

    return-void
.end method

.method public static final synthetic access$pushRun(Lshark/internal/aosp/ByteArrayTimSort;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lshark/internal/aosp/ByteArrayTimSort;->pushRun(II)V

    return-void
.end method

.method public static final synthetic access$setStackSize$p(Lshark/internal/aosp/ByteArrayTimSort;I)V
    .locals 0

    .line 58
    iput p1, p0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    return-void
.end method

.method private final ensureCapacity(I)[B
    .locals 3

    .line 574
    iget-object v0, p0, Lshark/internal/aosp/ByteArrayTimSort;->tmp:[B

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    array-length v0, v0

    iget v1, p0, Lshark/internal/aosp/ByteArrayTimSort;->entrySize:I

    mul-int v2, p1, v1

    if-ge v0, v2, :cond_2

    shr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    shr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x8

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_1

    goto :goto_0

    .line 587
    :cond_1
    iget-object p1, p0, Lshark/internal/aosp/ByteArrayTimSort;->a:[B

    array-length p1, p1

    div-int/2addr p1, v1

    ushr-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 588
    :goto_0
    iget v0, p0, Lshark/internal/aosp/ByteArrayTimSort;->entrySize:I

    mul-int p1, p1, v0

    new-array p1, p1, [B

    .line 589
    iput-object p1, p0, Lshark/internal/aosp/ByteArrayTimSort;->tmp:[B

    .line 591
    :cond_2
    iget-object p1, p0, Lshark/internal/aosp/ByteArrayTimSort;->tmp:[B

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    return-object p1
.end method

.method private final mergeAt(I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 194
    sget-boolean v2, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 196
    iget v3, v0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    add-int/lit8 v4, v3, -0x2

    if-eq v1, v4, :cond_0

    add-int/lit8 v3, v3, -0x3

    .line 197
    :cond_0
    iget-object v3, v0, Lshark/internal/aosp/ByteArrayTimSort;->runBase:[I

    aget v13, v3, v1

    .line 198
    iget-object v4, v0, Lshark/internal/aosp/ByteArrayTimSort;->runLen:[I

    aget v14, v4, v1

    add-int/lit8 v5, v1, 0x1

    .line 199
    aget v15, v3, v5

    .line 200
    aget v20, v4, v5

    add-int v6, v14, v20

    .line 208
    aput v6, v4, v1

    .line 209
    iget v6, v0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    add-int/lit8 v7, v6, -0x3

    if-ne v1, v7, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 210
    aget v7, v3, v1

    aput v7, v3, v5

    .line 211
    aget v1, v4, v1

    aput v1, v4, v5

    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 213
    iput v6, v0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    .line 218
    sget-object v1, Lshark/internal/aosp/ByteArrayTimSort;->Companion:Lshark/internal/aosp/ByteArrayTimSort$Companion;

    iget-object v7, v0, Lshark/internal/aosp/ByteArrayTimSort;->a:[B

    const/4 v10, 0x0

    iget v11, v0, Lshark/internal/aosp/ByteArrayTimSort;->entrySize:I

    iget-object v12, v0, Lshark/internal/aosp/ByteArrayTimSort;->c:Lshark/internal/aosp/ByteArrayComparator;

    move-object v4, v1

    move-object v5, v7

    move v6, v15

    move v8, v13

    move v9, v14

    invoke-static/range {v4 .. v12}, Lshark/internal/aosp/ByteArrayTimSort$Companion;->access$gallopRight(Lshark/internal/aosp/ByteArrayTimSort$Companion;[BI[BIIIILshark/internal/aosp/ByteArrayComparator;)I

    move-result v3

    add-int/2addr v13, v3

    sub-int/2addr v14, v3

    if-nez v14, :cond_2

    return-void

    .line 228
    :cond_2
    iget-object v3, v0, Lshark/internal/aosp/ByteArrayTimSort;->a:[B

    add-int v4, v13, v14

    add-int/lit8 v17, v4, -0x1

    add-int/lit8 v21, v20, -0x1

    iget v4, v0, Lshark/internal/aosp/ByteArrayTimSort;->entrySize:I

    iget-object v5, v0, Lshark/internal/aosp/ByteArrayTimSort;->c:Lshark/internal/aosp/ByteArrayComparator;

    move v6, v15

    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v18, v3

    move/from16 v19, v6

    move/from16 v22, v4

    move-object/from16 v23, v5

    invoke-static/range {v15 .. v23}, Lshark/internal/aosp/ByteArrayTimSort$Companion;->access$gallopLeft(Lshark/internal/aosp/ByteArrayTimSort$Companion;[BI[BIIIILshark/internal/aosp/ByteArrayComparator;)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    if-gt v14, v1, :cond_4

    .line 234
    invoke-direct {v0, v13, v14, v6, v1}, Lshark/internal/aosp/ByteArrayTimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 236
    :cond_4
    invoke-direct {v0, v13, v14, v6, v1}, Lshark/internal/aosp/ByteArrayTimSort;->mergeHi(IIII)V

    :goto_0
    return-void
.end method

.method private final mergeCollapse()V
    .locals 5

    .line 161
    :goto_0
    iget v0, p0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x2

    if-lt v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lshark/internal/aosp/ByteArrayTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lshark/internal/aosp/ByteArrayTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    if-gt v2, v3, :cond_2

    .line 164
    :cond_1
    iget-object v1, p0, Lshark/internal/aosp/ByteArrayTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 166
    :cond_2
    iget-object v1, p0, Lshark/internal/aosp/ByteArrayTimSort;->runLen:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-le v2, v1, :cond_3

    goto :goto_2

    .line 169
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lshark/internal/aosp/ByteArrayTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private final mergeForceCollapse()V
    .locals 4

    .line 178
    :goto_0
    iget v0, p0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_0

    .line 180
    iget-object v1, p0, Lshark/internal/aosp/ByteArrayTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 182
    :cond_0
    invoke-direct {p0, v0}, Lshark/internal/aosp/ByteArrayTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final mergeHi(IIII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 420
    sget-boolean v3, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    if-eqz v3, :cond_0

    if-lez p2, :cond_0

    if-lez v2, :cond_0

    add-int v3, p1, p2

    .line 422
    :cond_0
    iget-object v13, v0, Lshark/internal/aosp/ByteArrayTimSort;->a:[B

    .line 423
    invoke-direct {v0, v2}, Lshark/internal/aosp/ByteArrayTimSort;->ensureCapacity(I)[B

    move-result-object v14

    .line 424
    iget v15, v0, Lshark/internal/aosp/ByteArrayTimSort;->entrySize:I

    mul-int v3, v1, v15

    mul-int v4, v2, v15

    const/4 v12, 0x0

    .line 425
    invoke-static {v13, v3, v14, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p1, p2

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    add-int/lit8 v5, v2, -0x1

    add-int/2addr v1, v2

    sub-int/2addr v1, v11

    mul-int v6, v1, v15

    mul-int v7, v3, v15

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v15, :cond_1

    add-int v9, v6, v8

    add-int v10, v7, v8

    .line 433
    aget-byte v10, v13, v10

    aput-byte v10, v13, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v6, p2, -0x1

    if-nez v6, :cond_2

    sub-int/2addr v1, v5

    mul-int v1, v1, v15

    .line 438
    invoke-static {v14, v12, v13, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    if-ne v2, v11, :cond_4

    sub-int/2addr v1, v6

    sub-int/2addr v3, v6

    add-int/2addr v3, v11

    mul-int v3, v3, v15

    add-int/lit8 v2, v1, 0x1

    mul-int v2, v2, v15

    mul-int v6, v6, v15

    .line 444
    invoke-static {v13, v3, v13, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v1, v1, v15

    mul-int v5, v5, v15

    :goto_1
    if-ge v12, v15, :cond_3

    add-int v2, v1, v12

    add-int v3, v5, v12

    .line 448
    aget-byte v3, v14, v3

    aput-byte v3, v13, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 452
    :cond_4
    iget-object v10, v0, Lshark/internal/aosp/ByteArrayTimSort;->c:Lshark/internal/aosp/ByteArrayComparator;

    .line 453
    iget v4, v0, Lshark/internal/aosp/ByteArrayTimSort;->minGallop:I

    move v9, v4

    :goto_2
    move/from16 v16, v5

    move/from16 v17, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 462
    :goto_3
    sget-boolean v4, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    move-object v4, v10

    move v5, v15

    move-object v6, v14

    move/from16 v7, v16

    move-object v8, v13

    move v12, v9

    move v9, v3

    .line 463
    invoke-interface/range {v4 .. v9}, Lshark/internal/aosp/ByteArrayComparator;->compare(I[BI[BI)I

    move-result v4

    if-gez v4, :cond_7

    mul-int v4, v1, v15

    mul-int v5, v3, v15

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v15, :cond_5

    add-int v7, v4, v6

    add-int v8, v5, v6

    .line 467
    aget-byte v8, v13, v8

    aput-byte v8, v13, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v17, v17, -0x1

    if-nez v17, :cond_6

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    goto :goto_7

    :cond_7
    mul-int v4, v1, v15

    mul-int v5, v16, v15

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v15, :cond_8

    add-int v7, v4, v6

    add-int v8, v5, v6

    .line 479
    aget-byte v8, v14, v8

    aput-byte v8, v13, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v11, :cond_9

    :goto_6
    move v11, v12

    const/4 v5, 0x1

    move v12, v2

    move v2, v1

    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_9
    const/16 v18, 0x0

    :goto_7
    or-int v4, v18, v19

    if-lt v4, v12, :cond_1a

    move v9, v2

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v16, v3

    move/from16 v17, v12

    move v12, v1

    .line 495
    :goto_8
    sget-boolean v1, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    .line 496
    sget-object v1, Lshark/internal/aosp/ByteArrayTimSort;->Companion:Lshark/internal/aosp/ByteArrayTimSort$Companion;

    add-int/lit8 v7, v19, -0x1

    move-object v2, v14

    move/from16 v3, v18

    move-object v4, v13

    move/from16 v5, p1

    move/from16 v6, v19

    move v8, v15

    move/from16 v20, v9

    move-object v9, v10

    invoke-static/range {v1 .. v9}, Lshark/internal/aosp/ByteArrayTimSort$Companion;->access$gallopRight(Lshark/internal/aosp/ByteArrayTimSort$Companion;[BI[BIIIILshark/internal/aosp/ByteArrayComparator;)I

    move-result v1

    sub-int v1, v19, v1

    if-eqz v1, :cond_b

    sub-int v2, v12, v1

    sub-int v3, v16, v1

    sub-int v4, v19, v1

    add-int/lit8 v5, v3, 0x1

    mul-int v5, v5, v15

    add-int/lit8 v6, v2, 0x1

    mul-int v6, v6, v15

    mul-int v7, v1, v15

    .line 501
    invoke-static {v13, v5, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v4, :cond_a

    move/from16 v11, v17

    move/from16 v16, v18

    move/from16 v12, v20

    const/4 v1, 0x0

    const/4 v5, 0x1

    move/from16 v17, v4

    goto/16 :goto_e

    :cond_a
    move v12, v2

    move/from16 v19, v4

    goto :goto_9

    :cond_b
    move/from16 v3, v16

    :goto_9
    mul-int v2, v12, v15

    mul-int v4, v18, v15

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v15, :cond_c

    add-int v6, v2, v5

    add-int v7, v4, v5

    .line 510
    aget-byte v7, v14, v7

    aput-byte v7, v13, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v2, v12, -0x1

    add-int/lit8 v16, v18, -0x1

    add-int/lit8 v12, v20, -0x1

    if-ne v12, v11, :cond_d

    move/from16 v11, v17

    move/from16 v17, v19

    const/4 v1, 0x0

    const/4 v5, 0x1

    goto/16 :goto_e

    .line 516
    :cond_d
    sget-object v4, Lshark/internal/aosp/ByteArrayTimSort;->Companion:Lshark/internal/aosp/ByteArrayTimSort$Companion;

    const/4 v8, 0x0

    add-int/lit8 v18, v12, -0x1

    move-object v5, v13

    move v6, v3

    move-object v7, v14

    move v9, v12

    move-object/from16 v20, v10

    move/from16 v10, v18

    move v11, v15

    move/from16 p2, v1

    move/from16 v18, v12

    const/4 v1, 0x0

    move-object/from16 v12, v20

    invoke-static/range {v4 .. v12}, Lshark/internal/aosp/ByteArrayTimSort$Companion;->access$gallopLeft(Lshark/internal/aosp/ByteArrayTimSort$Companion;[BI[BIIIILshark/internal/aosp/ByteArrayComparator;)I

    move-result v4

    sub-int v12, v18, v4

    if-eqz v12, :cond_f

    sub-int/2addr v2, v12

    sub-int v16, v16, v12

    sub-int v4, v18, v12

    add-int/lit8 v5, v16, 0x1

    mul-int v5, v5, v15

    add-int/lit8 v6, v2, 0x1

    mul-int v6, v6, v15

    mul-int v7, v12, v15

    .line 521
    invoke-static {v14, v5, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    if-gt v4, v5, :cond_e

    move v12, v4

    move/from16 v11, v17

    :goto_b
    move/from16 v17, v19

    goto :goto_e

    :cond_e
    move v9, v4

    goto :goto_c

    :cond_f
    const/4 v5, 0x1

    move/from16 v9, v18

    :goto_c
    move/from16 v18, v16

    mul-int v4, v2, v15

    mul-int v6, v3, v15

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v15, :cond_10

    add-int v8, v4, v7

    add-int v10, v6, v7

    .line 531
    aget-byte v10, v13, v10

    aput-byte v10, v13, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_10
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v16, v3, -0x1

    add-int/lit8 v19, v19, -0x1

    if-nez v19, :cond_15

    move v12, v9

    move/from16 v3, v16

    move/from16 v11, v17

    move/from16 v16, v18

    goto :goto_b

    :goto_e
    if-ge v11, v5, :cond_11

    const/4 v11, 0x1

    .line 543
    :cond_11
    iput v11, v0, Lshark/internal/aosp/ByteArrayTimSort;->minGallop:I

    if-ne v12, v5, :cond_12

    .line 545
    sget-boolean v4, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    sub-int v2, v2, v17

    sub-int v3, v3, v17

    add-int/2addr v3, v5

    mul-int v3, v3, v15

    add-int/lit8 v4, v2, 0x1

    mul-int v4, v4, v15

    mul-int v5, v17, v15

    .line 548
    invoke-static {v13, v3, v13, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v2, v2, v15

    mul-int v16, v16, v15

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v15, :cond_13

    add-int v1, v2, v12

    add-int v3, v16, v12

    .line 552
    aget-byte v3, v14, v3

    aput-byte v3, v13, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_12
    if-eqz v12, :cond_14

    .line 559
    sget-boolean v3, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    add-int/lit8 v3, v12, -0x1

    sub-int/2addr v2, v3

    mul-int v2, v2, v15

    mul-int v12, v12, v15

    .line 561
    invoke-static {v14, v1, v13, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    return-void

    .line 555
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Comparison method violates its general contract!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_15
    add-int/lit8 v17, v17, -0x1

    .line 538
    sget v3, Lshark/internal/aosp/ByteArrayTimSort;->MIN_GALLOP:I

    move/from16 v4, p2

    if-lt v4, v3, :cond_16

    const/4 v4, 0x1

    goto :goto_10

    :cond_16
    const/4 v4, 0x0

    :goto_10
    if-lt v12, v3, :cond_17

    const/4 v12, 0x1

    goto :goto_11

    :cond_17
    const/4 v12, 0x0

    :goto_11
    or-int v3, v4, v12

    if-nez v3, :cond_19

    if-gez v17, :cond_18

    const/4 v12, 0x0

    goto :goto_12

    :cond_18
    move/from16 v12, v17

    :goto_12
    add-int/lit8 v3, v12, 0x2

    move v1, v2

    move v2, v9

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v10, v20

    const/4 v11, 0x1

    const/4 v12, 0x0

    move v9, v3

    move/from16 v3, v16

    goto/16 :goto_2

    :cond_19
    move v12, v2

    move-object/from16 v10, v20

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_1a
    move v4, v1

    move v9, v12

    const/4 v12, 0x0

    goto/16 :goto_3
.end method

.method private final mergeLo(IIII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 263
    sget-boolean v3, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    if-lez p4, :cond_0

    add-int v3, p1, v1

    .line 265
    :cond_0
    iget-object v3, v0, Lshark/internal/aosp/ByteArrayTimSort;->a:[B

    .line 266
    iget v13, v0, Lshark/internal/aosp/ByteArrayTimSort;->entrySize:I

    .line 267
    invoke-direct {v0, v1}, Lshark/internal/aosp/ByteArrayTimSort;->ensureCapacity(I)[B

    move-result-object v14

    mul-int v4, p1, v13

    mul-int v5, v1, v13

    const/4 v15, 0x0

    .line 268
    invoke-static {v3, v4, v14, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v6, v2, v13

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v13, :cond_1

    add-int v8, v4, v7

    add-int v9, v6, v7

    .line 276
    aget-byte v9, v3, v9

    aput-byte v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x1

    add-int/lit8 v4, p1, 0x1

    add-int/2addr v2, v12

    add-int/lit8 v6, p4, -0x1

    if-nez v6, :cond_2

    mul-int/lit8 v1, v13, 0x0

    mul-int v4, v4, v13

    .line 282
    invoke-static {v14, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    if-ne v1, v12, :cond_4

    mul-int v2, v2, v13

    mul-int v1, v4, v13

    mul-int v5, v6, v13

    .line 286
    invoke-static {v3, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    mul-int v4, v4, v13

    mul-int/lit8 v1, v13, 0x0

    :goto_1
    if-ge v15, v13, :cond_3

    add-int v2, v4, v15

    add-int v5, v1, v15

    .line 290
    aget-byte v5, v14, v5

    aput-byte v5, v3, v2

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 294
    :cond_4
    iget-object v11, v0, Lshark/internal/aosp/ByteArrayTimSort;->c:Lshark/internal/aosp/ByteArrayComparator;

    .line 295
    iget v5, v0, Lshark/internal/aosp/ByteArrayTimSort;->minGallop:I

    move v10, v5

    const/4 v5, 0x0

    :goto_2
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 304
    :goto_3
    sget-boolean v4, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    move-object v4, v11

    move v5, v13

    move-object v6, v3

    move v7, v2

    move-object v8, v14

    move/from16 v9, v17

    .line 305
    invoke-interface/range {v4 .. v9}, Lshark/internal/aosp/ByteArrayComparator;->compare(I[BI[BI)I

    move-result v4

    if-gez v4, :cond_7

    mul-int v4, v16, v13

    mul-int v5, v2, v13

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_5

    add-int v7, v4, v6

    add-int v8, v5, v6

    .line 309
    aget-byte v8, v3, v8

    aput-byte v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v18, v18, -0x1

    if-nez v18, :cond_6

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    goto :goto_7

    :cond_7
    mul-int v4, v16, v13

    mul-int v5, v17, v13

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v13, :cond_8

    add-int v7, v4, v6

    add-int v8, v5, v6

    .line 321
    aget-byte v8, v14, v8

    aput-byte v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v12, :cond_9

    :goto_6
    move v12, v10

    const/4 v15, 0x1

    goto/16 :goto_c

    :cond_9
    const/16 v20, 0x0

    :goto_7
    or-int v4, v19, v20

    if-lt v4, v10, :cond_1a

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v10

    .line 337
    :goto_8
    sget-boolean v4, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    .line 338
    sget-object v4, Lshark/internal/aosp/ByteArrayTimSort;->Companion:Lshark/internal/aosp/ByteArrayTimSort$Companion;

    const/4 v10, 0x0

    move-object v5, v3

    move v6, v2

    move-object v7, v14

    move/from16 v8, v18

    move v9, v1

    move-object/from16 v21, v11

    move v11, v13

    const/4 v15, 0x1

    move-object/from16 v12, v21

    invoke-static/range {v4 .. v12}, Lshark/internal/aosp/ByteArrayTimSort$Companion;->access$gallopRight(Lshark/internal/aosp/ByteArrayTimSort$Companion;[BI[BIIIILshark/internal/aosp/ByteArrayComparator;)I

    move-result v12

    if-eqz v12, :cond_b

    mul-int v4, v18, v13

    mul-int v5, v17, v13

    mul-int v6, v12, v13

    .line 340
    invoke-static {v14, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v17, v12

    add-int v17, v18, v12

    sub-int/2addr v1, v12

    if-gt v1, v15, :cond_a

    move/from16 v12, v16

    move/from16 v18, v19

    move/from16 v16, v4

    goto/16 :goto_c

    :cond_a
    move/from16 v18, v17

    move/from16 v17, v4

    :cond_b
    mul-int v4, v17, v13

    mul-int v5, v2, v13

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v13, :cond_c

    add-int v7, v4, v6

    add-int v8, v5, v6

    .line 351
    aget-byte v8, v3, v8

    aput-byte v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v19, v19, -0x1

    if-nez v19, :cond_d

    :goto_a
    move/from16 v12, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    goto :goto_c

    .line 357
    :cond_d
    sget-object v4, Lshark/internal/aosp/ByteArrayTimSort;->Companion:Lshark/internal/aosp/ByteArrayTimSort$Companion;

    const/4 v10, 0x0

    move-object v5, v14

    move/from16 v6, v18

    move-object v7, v3

    move v8, v2

    move/from16 v9, v19

    move v11, v13

    move/from16 v22, v12

    move-object/from16 v12, v21

    invoke-static/range {v4 .. v12}, Lshark/internal/aosp/ByteArrayTimSort$Companion;->access$gallopLeft(Lshark/internal/aosp/ByteArrayTimSort$Companion;[BI[BIIIILshark/internal/aosp/ByteArrayComparator;)I

    move-result v4

    if-eqz v4, :cond_f

    mul-int v5, v2, v13

    mul-int v6, v17, v13

    mul-int v7, v4, v13

    .line 359
    invoke-static {v3, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v17, v4

    add-int/2addr v2, v4

    sub-int v6, v19, v4

    if-nez v6, :cond_e

    move/from16 v12, v16

    move/from16 v17, v18

    move/from16 v16, v5

    move/from16 v18, v6

    goto :goto_c

    :cond_e
    move/from16 v17, v5

    move/from16 v19, v6

    :cond_f
    mul-int v5, v17, v13

    mul-int v6, v18, v13

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v13, :cond_10

    add-int v8, v5, v7

    add-int v9, v6, v7

    .line 369
    aget-byte v9, v14, v9

    aput-byte v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v15, :cond_15

    goto :goto_a

    :goto_c
    if-ge v12, v15, :cond_11

    const/4 v12, 0x1

    .line 381
    :cond_11
    iput v12, v0, Lshark/internal/aosp/ByteArrayTimSort;->minGallop:I

    if-ne v1, v15, :cond_12

    .line 383
    sget-boolean v1, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    mul-int v2, v2, v13

    mul-int v1, v16, v13

    mul-int v4, v18, v13

    .line 384
    invoke-static {v3, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v16, v16, v18

    mul-int v16, v16, v13

    mul-int v17, v17, v13

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v13, :cond_13

    add-int v1, v16, v15

    add-int v2, v17, v15

    .line 388
    aget-byte v2, v14, v2

    aput-byte v2, v3, v1

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :cond_12
    if-eqz v1, :cond_14

    .line 395
    sget-boolean v2, Lshark/internal/aosp/ByteArrayTimSort;->DEBUG:Z

    mul-int v2, v17, v13

    mul-int v4, v16, v13

    mul-int v1, v1, v13

    .line 397
    invoke-static {v14, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    return-void

    .line 391
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Comparison method violates its general contract!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_15
    add-int/lit8 v16, v16, -0x1

    .line 376
    sget v5, Lshark/internal/aosp/ByteArrayTimSort;->MIN_GALLOP:I

    move/from16 v6, v22

    if-lt v6, v5, :cond_16

    const/4 v12, 0x1

    goto :goto_e

    :cond_16
    const/4 v12, 0x0

    :goto_e
    if-lt v4, v5, :cond_17

    const/4 v4, 0x1

    goto :goto_f

    :cond_17
    const/4 v4, 0x0

    :goto_f
    or-int/2addr v4, v12

    if-nez v4, :cond_19

    if-gez v16, :cond_18

    const/16 v16, 0x0

    :cond_18
    add-int/lit8 v10, v16, 0x2

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v11, v21

    const/4 v12, 0x1

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_19
    move-object/from16 v11, v21

    const/4 v12, 0x1

    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_3
.end method

.method private final pushRun(II)V
    .locals 2

    .line 143
    iget-object v0, p0, Lshark/internal/aosp/ByteArrayTimSort;->runBase:[I

    iget v1, p0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    aput p1, v0, v1

    .line 144
    iget-object p1, p0, Lshark/internal/aosp/ByteArrayTimSort;->runLen:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 145
    iput v1, p0, Lshark/internal/aosp/ByteArrayTimSort;->stackSize:I

    return-void
.end method
