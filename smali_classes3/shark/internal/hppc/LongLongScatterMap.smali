.class public final Lshark/internal/hppc/LongLongScatterMap;
.super Ljava/lang/Object;
.source "LongLongScatterMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/internal/hppc/LongLongScatterMap$ForEachCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongLongScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongLongScatterMap.kt\nshark/internal/hppc/LongLongScatterMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,411:1\n1#2:412\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0000\u0018\u00002\u00020\u0001:\u00012B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J \u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u000e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001aJ\u000e\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u0003J\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 J\u000e\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020$J\u0011\u0010%\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0086\u0002J\u000e\u0010&\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001aJ\u000e\u0010\'\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0003J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\u0018\u0010)\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000bH\u0002J\u0006\u0010,\u001a\u00020\u0015J\u000e\u0010-\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aJ\u0019\u0010.\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010/\u001a\u00020\u001aH\u0086\u0002J\u0010\u00100\u001a\u00020\u00152\u0006\u00101\u001a\u00020\u0003H\u0002R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lshark/internal/hppc/LongLongScatterMap;",
        "",
        "expectedElements",
        "",
        "(I)V",
        "assigned",
        "hasEmptyKey",
        "",
        "isEmpty",
        "()Z",
        "keys",
        "",
        "loadFactor",
        "",
        "mask",
        "resizeAt",
        "size",
        "getSize",
        "()I",
        "values",
        "allocateBuffers",
        "",
        "arraySize",
        "allocateThenInsertThenRehash",
        "slot",
        "pendingKey",
        "",
        "pendingValue",
        "containsKey",
        "key",
        "ensureCapacity",
        "entrySequence",
        "Lkotlin/sequences/Sequence;",
        "Lshark/internal/hppc/LongLongPair;",
        "forEach",
        "forEachCallback",
        "Lshark/internal/hppc/LongLongScatterMap$ForEachCallback;",
        "get",
        "getSlot",
        "getSlotValue",
        "hashKey",
        "rehash",
        "fromKeys",
        "fromValues",
        "release",
        "remove",
        "set",
        "value",
        "shiftConflictingKeys",
        "gapSlotArg",
        "ForEachCallback",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private assigned:I

.field private hasEmptyKey:Z

.field private keys:[J

.field private loadFactor:D

.field private mask:I

.field private resizeAt:I

.field private values:[J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lshark/internal/hppc/LongLongScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 38
    iput-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    new-array v0, v0, [J

    .line 43
    iput-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 71
    iput-wide v0, p0, Lshark/internal/hppc/LongLongScatterMap;->loadFactor:D

    .line 77
    invoke-virtual {p0, p1}, Lshark/internal/hppc/LongLongScatterMap;->ensureCapacity(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lshark/internal/hppc/LongLongScatterMap;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getHasEmptyKey$p(Lshark/internal/hppc/LongLongScatterMap;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    return p0
.end method

.method public static final synthetic access$getKeys$p(Lshark/internal/hppc/LongLongScatterMap;)[J
    .locals 0

    .line 26
    iget-object p0, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    return-object p0
.end method

.method public static final synthetic access$getValues$p(Lshark/internal/hppc/LongLongScatterMap;)[J
    .locals 0

    .line 26
    iget-object p0, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    return-object p0
.end method

.method public static final synthetic access$setHasEmptyKey$p(Lshark/internal/hppc/LongLongScatterMap;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    return-void
.end method

.method public static final synthetic access$setKeys$p(Lshark/internal/hppc/LongLongScatterMap;[J)V
    .locals 0

    .line 26
    iput-object p1, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    return-void
.end method

.method public static final synthetic access$setValues$p(Lshark/internal/hppc/LongLongScatterMap;[J)V
    .locals 0

    .line 26
    iput-object p1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    return-void
.end method

.method private final allocateBuffers(I)V
    .locals 8

    .line 320
    iget-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 321
    iget-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    .line 324
    :try_start_0
    new-array v4, v2, [J

    iput-object v4, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 325
    new-array v2, v2, [J

    iput-object v2, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget-wide v1, p0, Lshark/internal/hppc/LongLongScatterMap;->loadFactor:D

    invoke-virtual {v0, p1, v1, v2}, Lshark/internal/hppc/HPPC;->expandAtCount(ID)I

    move-result v0

    iput v0, p0, Lshark/internal/hppc/LongLongScatterMap;->resizeAt:I

    sub-int/2addr p1, v3

    .line 340
    iput p1, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    return-void

    :catch_0
    move-exception v2

    .line 327
    iput-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 328
    iput-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    .line 330
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 331
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Locale.ROOT"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 333
    iget v6, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    .line 330
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Not enough memory to allocate buffers for rehashing: %,d -> %,d"

    invoke-static {v1, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    check-cast v2, Ljava/lang/Throwable;

    .line 329
    invoke-direct {v0, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final allocateThenInsertThenRehash(IJJ)V
    .locals 7

    .line 359
    iget-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 360
    iget-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    .line 361
    sget-object v2, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget v3, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lshark/internal/hppc/LongLongScatterMap;->getSize()I

    move-result v4

    iget-wide v5, p0, Lshark/internal/hppc/LongLongScatterMap;->loadFactor:D

    invoke-virtual {v2, v3, v4, v5, v6}, Lshark/internal/hppc/HPPC;->nextBufferSize(IID)I

    move-result v2

    invoke-direct {p0, v2}, Lshark/internal/hppc/LongLongScatterMap;->allocateBuffers(I)V

    .line 365
    aput-wide p2, v0, p1

    .line 366
    aput-wide p4, v1, p1

    .line 369
    invoke-direct {p0, v0, v1}, Lshark/internal/hppc/LongLongScatterMap;->rehash([J[J)V

    return-void
.end method

.method private final hashKey(J)I
    .locals 1

    .line 280
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    invoke-virtual {v0, p1, p2}, Lshark/internal/hppc/HPPC;->mixPhi(J)I

    move-result p1

    return p1
.end method

.method private final rehash([J[J)V
    .locals 12

    .line 291
    iget-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 292
    iget-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    .line 293
    iget v2, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    .line 297
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 298
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-wide v5, p1, v3

    aput-wide v5, v0, v4

    .line 299
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-wide v5, p2, v3

    aput-wide v5, v1, v4

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 301
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 303
    invoke-direct {p0, v4, v5}, Lshark/internal/hppc/LongLongScatterMap;->hashKey(J)I

    move-result v8

    :goto_1
    and-int/2addr v8, v2

    .line 304
    aget-wide v9, v0, v8

    cmp-long v11, v9, v6

    if-eqz v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 307
    :cond_1
    aput-wide v4, v0, v8

    .line 308
    aget-wide v4, p2, v3

    aput-wide v4, v1, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final shiftConflictingKeys(I)V
    .locals 11

    .line 378
    iget-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 379
    iget-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    .line 380
    iget v2, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int v5, p1, v4

    and-int/2addr v5, v2

    .line 386
    aget-wide v6, v0, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 406
    aput-wide v8, v0, p1

    .line 407
    aput-wide v8, v1, p1

    .line 408
    iget p1, p0, Lshark/internal/hppc/LongLongScatterMap;->assigned:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lshark/internal/hppc/LongLongScatterMap;->assigned:I

    return-void

    .line 391
    :cond_1
    invoke-direct {p0, v6, v7}, Lshark/internal/hppc/LongLongScatterMap;->hashKey(J)I

    move-result v8

    sub-int v8, v5, v8

    and-int/2addr v8, v2

    if-lt v8, v4, :cond_0

    .line 398
    aput-wide v6, v0, p1

    .line 399
    aget-wide v6, v1, v5

    aput-wide v6, v1, p1

    move p1, v5

    goto :goto_0
.end method


# virtual methods
.method public final containsKey(J)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 237
    iget-boolean p1, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    return p1

    .line 239
    :cond_0
    iget-object v2, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 240
    iget v3, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    .line 241
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongLongScatterMap;->hashKey(J)I

    move-result v4

    and-int/2addr v4, v3

    .line 243
    aget-wide v5, v2, v4

    :goto_0
    cmp-long v7, v5, v0

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    cmp-long v8, v5, p1

    if-nez v8, :cond_1

    return v7

    :cond_1
    add-int/2addr v4, v7

    and-int/2addr v4, v3

    .line 249
    aget-wide v5, v2, v4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ensureCapacity(I)V
    .locals 5

    .line 269
    iget v0, p0, Lshark/internal/hppc/LongLongScatterMap;->resizeAt:I

    if-le p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 271
    iget-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    .line 272
    sget-object v2, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget-wide v3, p0, Lshark/internal/hppc/LongLongScatterMap;->loadFactor:D

    invoke-virtual {v2, p1, v3, v4}, Lshark/internal/hppc/HPPC;->minBufferSize(ID)I

    move-result p1

    invoke-direct {p0, p1}, Lshark/internal/hppc/LongLongScatterMap;->allocateBuffers(I)V

    .line 273
    invoke-virtual {p0}, Lshark/internal/hppc/LongLongScatterMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    invoke-direct {p0, v0, v1}, Lshark/internal/hppc/LongLongScatterMap;->rehash([J[J)V

    :cond_0
    return-void
.end method

.method public final entrySequence()Lkotlin/sequences/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/internal/hppc/LongLongPair;",
            ">;"
        }
    .end annotation

    .line 213
    iget v0, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    add-int/lit8 v0, v0, 0x1

    .line 214
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 215
    new-instance v2, Lshark/internal/hppc/LongLongScatterMap$entrySequence$1;

    invoke-direct {v2, p0, v1, v0}, Lshark/internal/hppc/LongLongScatterMap$entrySequence$1;-><init>(Lshark/internal/hppc/LongLongScatterMap;Lkotlin/jvm/internal/Ref$IntRef;I)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->generateSequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final forEach(Lshark/internal/hppc/LongLongScatterMap$ForEachCallback;)V
    .locals 7

    const-string v0, "forEachCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget v0, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    :goto_0
    const-wide/16 v2, 0x0

    if-ge v1, v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 194
    iget-object v4, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    aget-wide v5, v4, v1

    cmp-long v4, v5, v2

    if-eqz v4, :cond_0

    .line 196
    iget-object v2, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v5, v6, v3, v4}, Lshark/internal/hppc/LongLongScatterMap$ForEachCallback;->onEntry(JJ)V

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    .line 203
    iget-boolean v4, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 205
    iget-object v4, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    aget-wide v5, v4, v0

    invoke-interface {p1, v2, v3, v5, v6}, Lshark/internal/hppc/LongLongScatterMap$ForEachCallback;->onEntry(JJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final get(J)J
    .locals 2

    .line 179
    invoke-virtual {p0, p1, p2}, Lshark/internal/hppc/LongLongScatterMap;->getSlot(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, v0}, Lshark/internal/hppc/LongLongScatterMap;->getSlotValue(I)J

    move-result-wide p1

    return-wide p1

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final getSize()I
    .locals 2

    .line 265
    iget v0, p0, Lshark/internal/hppc/LongLongScatterMap;->assigned:I

    iget-boolean v1, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final getSlot(J)I
    .locals 9

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 151
    iget-boolean p1, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    add-int/lit8 v0, p1, 0x1

    :cond_0
    return v0

    .line 153
    :cond_1
    iget-object v3, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 154
    iget v4, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    .line 155
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongLongScatterMap;->hashKey(J)I

    move-result v5

    and-int/2addr v5, v4

    .line 157
    aget-wide v6, v3, v5

    :goto_0
    cmp-long v8, v6, v1

    if-eqz v8, :cond_3

    cmp-long v8, v6, p1

    if-nez v8, :cond_2

    return v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v4

    .line 163
    aget-wide v6, v3, v5

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final getSlotValue(I)J
    .locals 3

    .line 173
    iget-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lshark/internal/hppc/LongLongScatterMap;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final release()V
    .locals 4

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lshark/internal/hppc/LongLongScatterMap;->assigned:I

    .line 258
    iput-boolean v0, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    .line 260
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    const/4 v1, 0x4

    iget-wide v2, p0, Lshark/internal/hppc/LongLongScatterMap;->loadFactor:D

    invoke-virtual {v0, v1, v2, v3}, Lshark/internal/hppc/HPPC;->minBufferSize(ID)I

    move-result v0

    invoke-direct {p0, v0}, Lshark/internal/hppc/LongLongScatterMap;->allocateBuffers(I)V

    return-void
.end method

.method public final remove(J)J
    .locals 8

    .line 118
    iget v0, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    .line 121
    iget-object p1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide v3, p1, v0

    .line 122
    aput-wide v1, p1, v0

    return-wide v3

    .line 125
    :cond_0
    iget-object v3, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 126
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongLongScatterMap;->hashKey(J)I

    move-result v4

    and-int/2addr v4, v0

    .line 128
    aget-wide v5, v3, v4

    :goto_0
    cmp-long v7, v5, v1

    if-eqz v7, :cond_2

    cmp-long v7, v5, p1

    if-nez v7, :cond_1

    .line 131
    iget-object p1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    aget-wide v0, p1, v4

    .line 132
    invoke-direct {p0, v4}, Lshark/internal/hppc/LongLongScatterMap;->shiftConflictingKeys(I)V

    return-wide v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v0

    .line 136
    aget-wide v5, v3, v4

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public final set(JJ)J
    .locals 9

    .line 84
    iget v0, p0, Lshark/internal/hppc/LongLongScatterMap;->mask:I

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v1, p1, v7

    if-nez v1, :cond_0

    .line 86
    iput-boolean v6, p0, Lshark/internal/hppc/LongLongScatterMap;->hasEmptyKey:Z

    .line 87
    iget-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    add-int/2addr v0, v6

    aget-wide v2, v1, v0

    .line 88
    aput-wide p3, v1, v0

    return-wide v2

    .line 91
    :cond_0
    iget-object v1, p0, Lshark/internal/hppc/LongLongScatterMap;->keys:[J

    .line 92
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongLongScatterMap;->hashKey(J)I

    move-result v2

    and-int/2addr v2, v0

    .line 94
    aget-wide v3, v1, v2

    :goto_0
    cmp-long v5, v3, v7

    if-eqz v5, :cond_2

    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    .line 97
    iget-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    aget-wide v3, v0, v2

    .line 98
    aput-wide p3, v0, v2

    return-wide v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    .line 102
    aget-wide v3, v1, v2

    goto :goto_0

    .line 105
    :cond_2
    iget v0, p0, Lshark/internal/hppc/LongLongScatterMap;->assigned:I

    iget v3, p0, Lshark/internal/hppc/LongLongScatterMap;->resizeAt:I

    if-ne v0, v3, :cond_3

    move-object v0, p0

    move v1, v2

    move-wide v2, p1

    move-wide v4, p3

    .line 106
    invoke-direct/range {v0 .. v5}, Lshark/internal/hppc/LongLongScatterMap;->allocateThenInsertThenRehash(IJJ)V

    goto :goto_1

    .line 108
    :cond_3
    aput-wide p1, v1, v2

    .line 109
    iget-object v0, p0, Lshark/internal/hppc/LongLongScatterMap;->values:[J

    aput-wide p3, v0, v2

    .line 112
    :goto_1
    iget v0, p0, Lshark/internal/hppc/LongLongScatterMap;->assigned:I

    add-int/2addr v0, v6

    iput v0, p0, Lshark/internal/hppc/LongLongScatterMap;->assigned:I

    return-wide v7
.end method
