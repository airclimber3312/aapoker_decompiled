.class abstract Lcom/google/android/gms/internal/zzdxk;
.super Lcom/google/android/gms/internal/zzdym;


# static fields
.field private static final zzmkm:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzdxk;->zzmkm:[B

    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzdym;-><init>([BI)V

    return-void
.end method

.method private static zza([IIIII)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v1, p0, p4

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdxk;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    aget v1, p0, p3

    add-int/2addr v1, v0

    aput v1, p0, p3

    aget v0, p0, p2

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdxk;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    aget v1, p0, p1

    add-int/2addr v1, v0

    aput v1, p0, p1

    aget p1, p0, p4

    xor-int/2addr p1, v1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzdxk;->rotateLeft(II)I

    move-result p1

    aput p1, p0, p4

    aget p4, p0, p3

    add-int/2addr p4, p1

    aput p4, p0, p3

    aget p1, p0, p2

    xor-int/2addr p1, p4

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/zzdxk;->rotateLeft(II)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method abstract zzd([BI)[I
.end method

.method final zze([BI)Ljava/nio/ByteBuffer;
    .locals 16

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/zzdxk;->zzd([BI)[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/16 v7, 0xc

    invoke-static {v1, v2, v5, v6, v7}, Lcom/google/android/gms/internal/zzdxk;->zza([IIIII)V

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/16 v10, 0x9

    const/16 v11, 0xd

    invoke-static {v1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/zzdxk;->zza([IIIII)V

    const/4 v12, 0x2

    const/4 v13, 0x6

    const/16 v14, 0xe

    invoke-static {v1, v12, v13, v4, v14}, Lcom/google/android/gms/internal/zzdxk;->zza([IIIII)V

    const/4 v15, 0x3

    const/4 v5, 0x7

    const/16 v10, 0xb

    const/16 v14, 0xf

    invoke-static {v1, v15, v5, v10, v14}, Lcom/google/android/gms/internal/zzdxk;->zza([IIIII)V

    invoke-static {v1, v2, v9, v4, v14}, Lcom/google/android/gms/internal/zzdxk;->zza([IIIII)V

    invoke-static {v1, v8, v13, v10, v7}, Lcom/google/android/gms/internal/zzdxk;->zza([IIIII)V

    invoke-static {v1, v12, v5, v6, v11}, Lcom/google/android/gms/internal/zzdxk;->zza([IIIII)V

    const/16 v4, 0xe

    const/16 v5, 0x9

    const/4 v6, 0x4

    invoke-static {v1, v15, v6, v5, v4}, Lcom/google/android/gms/internal/zzdxk;->zza([IIIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    aget v5, v1, v3

    add-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v0, v2, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object v1
.end method
