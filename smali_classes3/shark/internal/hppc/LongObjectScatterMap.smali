.class public final Lshark/internal/hppc/LongObjectScatterMap;
.super Ljava/lang/Object;
.source "LongObjectScatterMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J%\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u001fJ\u000e\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u001dJ\u000e\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u0005J\u0012\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000&0%J\u0018\u0010\'\u001a\u0004\u0018\u00018\u00002\u0006\u0010!\u001a\u00020\u001dH\u0086\u0002\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001dH\u0002J%\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u000b2\u000e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014H\u0002\u00a2\u0006\u0002\u0010-J\u0006\u0010.\u001a\u00020\u0018J\u0015\u0010/\u001a\u0004\u0018\u00018\u00002\u0006\u0010!\u001a\u00020\u001d\u00a2\u0006\u0002\u0010(J \u00100\u001a\u0004\u0018\u00018\u00002\u0006\u0010!\u001a\u00020\u001d2\u0006\u00101\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u00102J\u0010\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014X\u0082\u000e\u00a2\u0006\n\n\u0002\u0010\u0016\u0012\u0004\u0008\u0015\u0010\u0003\u00a8\u00065"
    }
    d2 = {
        "Lshark/internal/hppc/LongObjectScatterMap;",
        "T",
        "",
        "()V",
        "assigned",
        "",
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
        "",
        "getValues$annotations",
        "[Ljava/lang/Object;",
        "allocateBuffers",
        "",
        "arraySize",
        "allocateThenInsertThenRehash",
        "slot",
        "pendingKey",
        "",
        "pendingValue",
        "(IJLjava/lang/Object;)V",
        "containsKey",
        "key",
        "ensureCapacity",
        "expectedElements",
        "entrySequence",
        "Lkotlin/sequences/Sequence;",
        "Lshark/internal/hppc/LongObjectPair;",
        "get",
        "(J)Ljava/lang/Object;",
        "hashKey",
        "rehash",
        "fromKeys",
        "fromValues",
        "([J[Ljava/lang/Object;)V",
        "release",
        "remove",
        "set",
        "value",
        "(JLjava/lang/Object;)Ljava/lang/Object;",
        "shiftConflictingKeys",
        "gapSlotArg",
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

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 30
    iput-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    iput-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 64
    iput-wide v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->loadFactor:D

    const/4 v0, 0x4

    .line 70
    invoke-virtual {p0, v0}, Lshark/internal/hppc/LongObjectScatterMap;->ensureCapacity(I)V

    return-void
.end method

.method public static final synthetic access$getHasEmptyKey$p(Lshark/internal/hppc/LongObjectScatterMap;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lshark/internal/hppc/LongObjectScatterMap;->hasEmptyKey:Z

    return p0
.end method

.method public static final synthetic access$getKeys$p(Lshark/internal/hppc/LongObjectScatterMap;)[J
    .locals 0

    .line 26
    iget-object p0, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    return-object p0
.end method

.method public static final synthetic access$getValues$p(Lshark/internal/hppc/LongObjectScatterMap;)[Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setHasEmptyKey$p(Lshark/internal/hppc/LongObjectScatterMap;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->hasEmptyKey:Z

    return-void
.end method

.method public static final synthetic access$setKeys$p(Lshark/internal/hppc/LongObjectScatterMap;[J)V
    .locals 0

    .line 26
    iput-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    return-void
.end method

.method public static final synthetic access$setValues$p(Lshark/internal/hppc/LongObjectScatterMap;[Ljava/lang/Object;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method private final allocateBuffers(I)V
    .locals 8

    .line 265
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 266
    iget-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    .line 269
    :try_start_0
    new-array v4, v2, [J

    iput-object v4, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 271
    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget-wide v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->loadFactor:D

    invoke-virtual {v0, p1, v1, v2}, Lshark/internal/hppc/HPPC;->expandAtCount(ID)I

    move-result v0

    iput v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->resizeAt:I

    sub-int/2addr p1, v3

    .line 286
    iput p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    return-void

    :catch_0
    move-exception v2

    .line 273
    iput-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 274
    iput-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    .line 275
    new-instance v0, Ljava/lang/RuntimeException;

    .line 276
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 277
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Locale.ROOT"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 279
    iget v6, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    .line 276
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Not enough memory to allocate buffers for rehashing: %,d -> %,d"

    invoke-static {v1, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    check-cast v2, Ljava/lang/Throwable;

    .line 275
    invoke-direct {v0, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final allocateThenInsertThenRehash(IJLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJTT;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 306
    iget-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    .line 307
    sget-object v2, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget v3, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lshark/internal/hppc/LongObjectScatterMap;->getSize()I

    move-result v4

    iget-wide v5, p0, Lshark/internal/hppc/LongObjectScatterMap;->loadFactor:D

    invoke-virtual {v2, v3, v4, v5, v6}, Lshark/internal/hppc/HPPC;->nextBufferSize(IID)I

    move-result v2

    invoke-direct {p0, v2}, Lshark/internal/hppc/LongObjectScatterMap;->allocateBuffers(I)V

    .line 311
    aput-wide p2, v0, p1

    .line 312
    aput-object p4, v1, p1

    .line 315
    invoke-direct {p0, v0, v1}, Lshark/internal/hppc/LongObjectScatterMap;->rehash([J[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic getValues$annotations()V
    .locals 0

    return-void
.end method

.method private final hashKey(J)I
    .locals 1

    .line 225
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    invoke-virtual {v0, p1, p2}, Lshark/internal/hppc/HPPC;->mixPhi(J)I

    move-result p1

    return p1
.end method

.method private final rehash([J[Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[TT;)V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 237
    iget-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    .line 238
    iget v2, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    .line 242
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 243
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-wide v5, p1, v3

    aput-wide v5, v0, v4

    .line 244
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v5, p2, v3

    aput-object v5, v1, v4

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 246
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 248
    invoke-direct {p0, v4, v5}, Lshark/internal/hppc/LongObjectScatterMap;->hashKey(J)I

    move-result v8

    :goto_1
    and-int/2addr v8, v2

    .line 249
    aget-wide v9, v0, v8

    cmp-long v11, v9, v6

    if-eqz v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 252
    :cond_1
    aput-wide v4, v0, v8

    .line 253
    aget-object v4, p2, v3

    aput-object v4, v1, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final shiftConflictingKeys(I)V
    .locals 11

    .line 324
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 325
    iget-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    .line 326
    iget v2, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int v5, p1, v4

    and-int/2addr v5, v2

    .line 332
    aget-wide v6, v0, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 352
    aput-wide v8, v0, p1

    const/4 v0, 0x0

    .line 353
    aput-object v0, v1, p1

    .line 354
    iget p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->assigned:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->assigned:I

    return-void

    .line 337
    :cond_1
    invoke-direct {p0, v6, v7}, Lshark/internal/hppc/LongObjectScatterMap;->hashKey(J)I

    move-result v8

    sub-int v8, v5, v8

    and-int/2addr v8, v2

    if-lt v8, v4, :cond_0

    .line 344
    aput-wide v6, v0, p1

    .line 345
    aget-object v4, v1, v5

    aput-object v4, v1, p1

    move p1, v5

    goto :goto_0
.end method


# virtual methods
.method public final containsKey(J)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 182
    iget-boolean p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->hasEmptyKey:Z

    return p1

    .line 184
    :cond_0
    iget-object v2, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 185
    iget v3, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    .line 186
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongObjectScatterMap;->hashKey(J)I

    move-result v4

    and-int/2addr v4, v3

    .line 188
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

    .line 194
    aget-wide v5, v2, v4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ensureCapacity(I)V
    .locals 5

    .line 214
    iget v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->resizeAt:I

    if-le p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 216
    iget-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    .line 217
    sget-object v2, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget-wide v3, p0, Lshark/internal/hppc/LongObjectScatterMap;->loadFactor:D

    invoke-virtual {v2, p1, v3, v4}, Lshark/internal/hppc/HPPC;->minBufferSize(ID)I

    move-result p1

    invoke-direct {p0, p1}, Lshark/internal/hppc/LongObjectScatterMap;->allocateBuffers(I)V

    .line 218
    invoke-virtual {p0}, Lshark/internal/hppc/LongObjectScatterMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 219
    invoke-direct {p0, v0, v1}, Lshark/internal/hppc/LongObjectScatterMap;->rehash([J[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final entrySequence()Lkotlin/sequences/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/internal/hppc/LongObjectPair<",
            "TT;>;>;"
        }
    .end annotation

    .line 158
    iget v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    add-int/lit8 v0, v0, 0x1

    .line 159
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 160
    new-instance v2, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;

    invoke-direct {v2, p0, v1, v0}, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;-><init>(Lshark/internal/hppc/LongObjectScatterMap;Lkotlin/jvm/internal/Ref$IntRef;I)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->generateSequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 138
    iget-boolean p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->hasEmptyKey:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    iget p2, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    add-int/lit8 p2, p2, 0x1

    aget-object v0, p1, p2

    :cond_0
    return-object v0

    .line 140
    :cond_1
    iget-object v3, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 141
    iget v4, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    .line 142
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongObjectScatterMap;->hashKey(J)I

    move-result v5

    and-int/2addr v5, v4

    .line 144
    aget-wide v6, v3, v5

    :goto_0
    cmp-long v8, v6, v1

    if-eqz v8, :cond_3

    cmp-long v8, v6, p1

    if-nez v8, :cond_2

    .line 147
    iget-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v5

    return-object p1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v4

    .line 150
    aget-wide v6, v3, v5

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getSize()I
    .locals 2

    .line 210
    iget v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->assigned:I

    iget-boolean v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->hasEmptyKey:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lshark/internal/hppc/LongObjectScatterMap;->getSize()I

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

    .line 202
    iput v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->assigned:I

    .line 203
    iput-boolean v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->hasEmptyKey:Z

    .line 205
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    const/4 v1, 0x4

    iget-wide v2, p0, Lshark/internal/hppc/LongObjectScatterMap;->loadFactor:D

    invoke-virtual {v0, v1, v2, v3}, Lshark/internal/hppc/HPPC;->minBufferSize(ID)I

    move-result v0

    invoke-direct {p0, v0}, Lshark/internal/hppc/LongObjectScatterMap;->allocateBuffers(I)V

    return-void
.end method

.method public final remove(J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 111
    iget v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->hasEmptyKey:Z

    .line 114
    iget-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object p2, p1, v0

    .line 115
    aput-object v1, p1, v0

    return-object p2

    .line 118
    :cond_0
    iget-object v4, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 119
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongObjectScatterMap;->hashKey(J)I

    move-result v5

    and-int/2addr v5, v0

    .line 121
    aget-wide v6, v4, v5

    :goto_0
    cmp-long v8, v6, v2

    if-eqz v8, :cond_2

    cmp-long v8, v6, p1

    if-nez v8, :cond_1

    .line 124
    iget-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v5

    .line 125
    invoke-direct {p0, v5}, Lshark/internal/hppc/LongObjectScatterMap;->shiftConflictingKeys(I)V

    return-object p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v0

    .line 129
    aget-wide v6, v4, v5

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final set(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)TT;"
        }
    .end annotation

    .line 77
    iget v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->mask:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 79
    iput-boolean v1, p0, Lshark/internal/hppc/LongObjectScatterMap;->hasEmptyKey:Z

    .line 80
    iget-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    add-int/2addr v0, v1

    aget-object p2, p1, v0

    .line 81
    aput-object p3, p1, v0

    return-object p2

    .line 84
    :cond_0
    iget-object v4, p0, Lshark/internal/hppc/LongObjectScatterMap;->keys:[J

    .line 85
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongObjectScatterMap;->hashKey(J)I

    move-result v5

    and-int/2addr v5, v0

    .line 87
    aget-wide v6, v4, v5

    :goto_0
    cmp-long v8, v6, v2

    if-eqz v8, :cond_2

    cmp-long v8, v6, p1

    if-nez v8, :cond_1

    .line 90
    iget-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    aget-object p2, p1, v5

    .line 91
    aput-object p3, p1, v5

    return-object p2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v0

    .line 95
    aget-wide v6, v4, v5

    goto :goto_0

    .line 98
    :cond_2
    iget v0, p0, Lshark/internal/hppc/LongObjectScatterMap;->assigned:I

    iget v2, p0, Lshark/internal/hppc/LongObjectScatterMap;->resizeAt:I

    if-ne v0, v2, :cond_3

    .line 99
    invoke-direct {p0, v5, p1, p2, p3}, Lshark/internal/hppc/LongObjectScatterMap;->allocateThenInsertThenRehash(IJLjava/lang/Object;)V

    goto :goto_1

    .line 101
    :cond_3
    aput-wide p1, v4, v5

    .line 102
    iget-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->values:[Ljava/lang/Object;

    aput-object p3, p1, v5

    .line 105
    :goto_1
    iget p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->assigned:I

    add-int/2addr p1, v1

    iput p1, p0, Lshark/internal/hppc/LongObjectScatterMap;->assigned:I

    const/4 p1, 0x0

    return-object p1
.end method
