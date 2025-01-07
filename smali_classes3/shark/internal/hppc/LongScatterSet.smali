.class public final Lshark/internal/hppc/LongScatterSet;
.super Ljava/lang/Object;
.source "LongScatterSet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0003H\u0002J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u0011\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0086\u0002J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u0003J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0011\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0086\u0002J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\tH\u0002J\u0006\u0010\u001d\u001a\u00020\u0012J\u000e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0003H\u0002J\u0006\u0010!\u001a\u00020\u0003R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lshark/internal/hppc/LongScatterSet;",
        "",
        "expectedElements",
        "",
        "(I)V",
        "assigned",
        "hasEmptyKey",
        "",
        "keys",
        "",
        "loadFactor",
        "",
        "mask",
        "resizeAt",
        "add",
        "key",
        "",
        "allocateBuffers",
        "",
        "arraySize",
        "allocateThenInsertThenRehash",
        "slot",
        "pendingKey",
        "contains",
        "ensureCapacity",
        "hashKey",
        "plusAssign",
        "rehash",
        "fromKeys",
        "release",
        "remove",
        "shiftConflictingKeys",
        "inputGapSlot",
        "size",
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

.field private final loadFactor:D

.field private mask:I

.field private resizeAt:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lshark/internal/hppc/LongScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [J

    .line 28
    iput-object v0, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 57
    iput-wide v0, p0, Lshark/internal/hppc/LongScatterSet;->loadFactor:D

    .line 60
    invoke-virtual {p0, p1}, Lshark/internal/hppc/LongScatterSet;->ensureCapacity(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lshark/internal/hppc/LongScatterSet;-><init>(I)V

    return-void
.end method

.method private final allocateBuffers(I)V
    .locals 8

    .line 218
    iget-object v0, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    .line 221
    :try_start_0
    new-array v1, v1, [J

    iput-object v1, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget-wide v3, p0, Lshark/internal/hppc/LongScatterSet;->loadFactor:D

    invoke-virtual {v0, p1, v3, v4}, Lshark/internal/hppc/HPPC;->expandAtCount(ID)I

    move-result v0

    iput v0, p0, Lshark/internal/hppc/LongScatterSet;->resizeAt:I

    sub-int/2addr p1, v2

    .line 235
    iput p1, p0, Lshark/internal/hppc/LongScatterSet;->mask:I

    return-void

    :catch_0
    move-exception v1

    .line 223
    iput-object v0, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    .line 225
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 226
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Locale.ROOT"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Lshark/internal/hppc/LongScatterSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    .line 225
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Not enough memory to allocate buffers for rehashing: %,d -> %,d"

    invoke-static {v3, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    check-cast v1, Ljava/lang/Throwable;

    .line 224
    invoke-direct {v0, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final allocateThenInsertThenRehash(IJ)V
    .locals 6

    .line 243
    iget-object v0, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    .line 244
    sget-object v1, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget v2, p0, Lshark/internal/hppc/LongScatterSet;->mask:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lshark/internal/hppc/LongScatterSet;->size()I

    move-result v3

    iget-wide v4, p0, Lshark/internal/hppc/LongScatterSet;->loadFactor:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lshark/internal/hppc/HPPC;->nextBufferSize(IID)I

    move-result v1

    invoke-direct {p0, v1}, Lshark/internal/hppc/LongScatterSet;->allocateBuffers(I)V

    .line 248
    aput-wide p2, v0, p1

    .line 251
    invoke-direct {p0, v0}, Lshark/internal/hppc/LongScatterSet;->rehash([J)V

    return-void
.end method

.method private final hashKey(J)I
    .locals 1

    .line 64
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    invoke-virtual {v0, p1, p2}, Lshark/internal/hppc/HPPC;->mixPhi(J)I

    move-result p1

    return p1
.end method

.method private final rehash([J)V
    .locals 11

    .line 196
    iget-object v0, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    .line 197
    iget v1, p0, Lshark/internal/hppc/LongScatterSet;->mask:I

    .line 199
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 201
    aget-wide v3, p1, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 203
    invoke-direct {p0, v3, v4}, Lshark/internal/hppc/LongScatterSet;->hashKey(J)I

    move-result v7

    :goto_1
    and-int/2addr v7, v1

    .line 204
    aget-wide v8, v0, v7

    cmp-long v10, v8, v5

    if-eqz v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 207
    :cond_1
    aput-wide v3, v0, v7

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final shiftConflictingKeys(I)V
    .locals 10

    .line 147
    iget-object v0, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    .line 148
    iget v1, p0, Lshark/internal/hppc/LongScatterSet;->mask:I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int v4, p1, v3

    and-int/2addr v4, v1

    .line 153
    aget-wide v5, v0, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 170
    aput-wide v7, v0, p1

    .line 171
    iget p1, p0, Lshark/internal/hppc/LongScatterSet;->assigned:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lshark/internal/hppc/LongScatterSet;->assigned:I

    return-void

    .line 157
    :cond_1
    invoke-direct {p0, v5, v6}, Lshark/internal/hppc/LongScatterSet;->hashKey(J)I

    move-result v7

    sub-int v7, v4, v7

    and-int/2addr v7, v1

    if-lt v7, v3, :cond_0

    .line 164
    aput-wide v5, v0, p1

    move p1, v4

    goto :goto_0
.end method


# virtual methods
.method public final add(J)Z
    .locals 9

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 73
    iget-boolean p1, p0, Lshark/internal/hppc/LongScatterSet;->hasEmptyKey:Z

    xor-int/2addr p1, v0

    .line 74
    iput-boolean v0, p0, Lshark/internal/hppc/LongScatterSet;->hasEmptyKey:Z

    return p1

    .line 77
    :cond_0
    iget-object v3, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    .line 78
    iget v4, p0, Lshark/internal/hppc/LongScatterSet;->mask:I

    .line 79
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongScatterSet;->hashKey(J)I

    move-result v5

    and-int/2addr v5, v4

    .line 81
    aget-wide v6, v3, v5

    :goto_0
    cmp-long v8, v6, v1

    if-eqz v8, :cond_2

    cmp-long v8, v6, p1

    if-nez v8, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v4

    .line 87
    aget-wide v6, v3, v5

    goto :goto_0

    .line 90
    :cond_2
    iget v1, p0, Lshark/internal/hppc/LongScatterSet;->assigned:I

    iget v2, p0, Lshark/internal/hppc/LongScatterSet;->resizeAt:I

    if-ne v1, v2, :cond_3

    .line 91
    invoke-direct {p0, v5, p1, p2}, Lshark/internal/hppc/LongScatterSet;->allocateThenInsertThenRehash(IJ)V

    goto :goto_1

    .line 93
    :cond_3
    aput-wide p1, v3, v5

    .line 96
    :goto_1
    iget p1, p0, Lshark/internal/hppc/LongScatterSet;->assigned:I

    add-int/2addr p1, v0

    iput p1, p0, Lshark/internal/hppc/LongScatterSet;->assigned:I

    return v0
.end method

.method public final contains(J)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 103
    iget-boolean p1, p0, Lshark/internal/hppc/LongScatterSet;->hasEmptyKey:Z

    return p1

    .line 105
    :cond_0
    iget-object v2, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    .line 106
    iget v3, p0, Lshark/internal/hppc/LongScatterSet;->mask:I

    .line 107
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongScatterSet;->hashKey(J)I

    move-result v4

    and-int/2addr v4, v3

    .line 108
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

    .line 114
    aget-wide v5, v2, v4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ensureCapacity(I)V
    .locals 4

    .line 181
    iget v0, p0, Lshark/internal/hppc/LongScatterSet;->resizeAt:I

    if-le p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    .line 183
    sget-object v1, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    iget-wide v2, p0, Lshark/internal/hppc/LongScatterSet;->loadFactor:D

    invoke-virtual {v1, p1, v2, v3}, Lshark/internal/hppc/HPPC;->minBufferSize(ID)I

    move-result p1

    invoke-direct {p0, p1}, Lshark/internal/hppc/LongScatterSet;->allocateBuffers(I)V

    .line 184
    invoke-virtual {p0}, Lshark/internal/hppc/LongScatterSet;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    invoke-direct {p0, v0}, Lshark/internal/hppc/LongScatterSet;->rehash([J)V

    :cond_0
    return-void
.end method

.method public final plusAssign(J)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lshark/internal/hppc/LongScatterSet;->add(J)Z

    return-void
.end method

.method public final release()V
    .locals 4

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lshark/internal/hppc/LongScatterSet;->assigned:I

    .line 176
    iput-boolean v0, p0, Lshark/internal/hppc/LongScatterSet;->hasEmptyKey:Z

    .line 177
    sget-object v0, Lshark/internal/hppc/HPPC;->INSTANCE:Lshark/internal/hppc/HPPC;

    const/4 v1, 0x4

    iget-wide v2, p0, Lshark/internal/hppc/LongScatterSet;->loadFactor:D

    invoke-virtual {v0, v1, v2, v3}, Lshark/internal/hppc/HPPC;->minBufferSize(ID)I

    move-result v0

    invoke-direct {p0, v0}, Lshark/internal/hppc/LongScatterSet;->allocateBuffers(I)V

    return-void
.end method

.method public final remove(J)Z
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 122
    iget-boolean p1, p0, Lshark/internal/hppc/LongScatterSet;->hasEmptyKey:Z

    .line 123
    iput-boolean v0, p0, Lshark/internal/hppc/LongScatterSet;->hasEmptyKey:Z

    move v0, p1

    goto :goto_1

    .line 126
    :cond_0
    iget-object v3, p0, Lshark/internal/hppc/LongScatterSet;->keys:[J

    .line 127
    iget v4, p0, Lshark/internal/hppc/LongScatterSet;->mask:I

    .line 128
    invoke-direct {p0, p1, p2}, Lshark/internal/hppc/LongScatterSet;->hashKey(J)I

    move-result v5

    and-int/2addr v5, v4

    .line 129
    aget-wide v6, v3, v5

    :goto_0
    cmp-long v8, v6, v1

    if-eqz v8, :cond_2

    cmp-long v8, v6, p1

    if-nez v8, :cond_1

    .line 132
    invoke-direct {p0, v5}, Lshark/internal/hppc/LongScatterSet;->shiftConflictingKeys(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v4

    .line 136
    aget-wide v6, v3, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final size()I
    .locals 2

    .line 191
    iget v0, p0, Lshark/internal/hppc/LongScatterSet;->assigned:I

    iget-boolean v1, p0, Lshark/internal/hppc/LongScatterSet;->hasEmptyKey:Z

    add-int/2addr v0, v1

    return v0
.end method
