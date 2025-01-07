.class final Lcom/google/android/gms/internal/zzeon;
.super Ljava/lang/Object;


# instance fields
.field private zznpx:Lcom/google/android/gms/internal/zzeoj;

.field private zznqs:Ljava/io/DataInputStream;

.field private zznqt:Lcom/google/android/gms/internal/zzeoe;

.field private zznqu:[B

.field private zznqv:Lcom/google/android/gms/internal/zzenz;

.field private volatile zznqw:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeoe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqs:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqt:Lcom/google/android/gms/internal/zzeoe;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznpx:Lcom/google/android/gms/internal/zzeoj;

    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqu:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqw:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeon;->zznqt:Lcom/google/android/gms/internal/zzeoe;

    return-void
.end method

.method private final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqs:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzeok;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqt:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeoe;->zzb(Lcom/google/android/gms/internal/zzeok;)V

    return-void
.end method


# virtual methods
.method final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqt:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeoe;->zzcdc()Lcom/google/android/gms/internal/zzeoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznpx:Lcom/google/android/gms/internal/zzeoj;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqw:Z

    if-nez v0, :cond_15

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqu:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzeon;->read([BII)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeon;->zznqu:[B

    aget-byte v4, v3, v1

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v6, v4, 0x70

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_14

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    invoke-direct {p0, v3, v0, v2}, Lcom/google/android/gms/internal/zzeon;->read([BII)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeon;->zznqu:[B

    aget-byte v6, v3, v2

    const/16 v7, 0x18

    const/16 v8, 0x7e

    const/16 v9, 0x8

    const/4 v10, 0x2

    if-ge v6, v8, :cond_3

    int-to-long v11, v6

    goto :goto_3

    :cond_3
    if-ne v6, v8, :cond_4

    invoke-direct {p0, v3, v0, v10}, Lcom/google/android/gms/internal/zzeon;->read([BII)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqu:[B

    aget-byte v3, v0, v10

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v9

    const/4 v6, 0x3

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    int-to-long v11, v0

    goto :goto_3

    :cond_4
    const/16 v8, 0x7f

    if-ne v6, v8, :cond_5

    invoke-direct {p0, v3, v0, v9}, Lcom/google/android/gms/internal/zzeon;->read([BII)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeon;->zznqu:[B

    sub-int/2addr v0, v9

    aget-byte v6, v3, v0

    int-to-long v11, v6

    const/16 v6, 0x38

    shl-long/2addr v11, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v13, v6

    const/16 v6, 0x30

    shl-long/2addr v13, v6

    add-long/2addr v11, v13

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v13, v6

    const/16 v6, 0x28

    shl-long/2addr v13, v6

    add-long/2addr v11, v13

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v13, v6

    const/16 v6, 0x20

    shl-long/2addr v13, v6

    add-long/2addr v11, v13

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v13, v6

    shl-long/2addr v13, v7

    add-long/2addr v11, v13

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    int-to-long v13, v6

    add-long/2addr v11, v13

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v9

    int-to-long v13, v6

    add-long/2addr v11, v13

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v13, v0

    add-long/2addr v11, v13

    goto :goto_3

    :cond_5
    const-wide/16 v11, 0x0

    :goto_3
    long-to-int v0, v11

    new-array v3, v0, [B

    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/gms/internal/zzeon;->read([BII)I

    if-ne v4, v9, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqt:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeoe;->zzcdd()V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xa

    if-eq v4, v1, :cond_0

    const/16 v1, 0x9

    if-eq v4, v2, :cond_8

    if-eq v4, v10, :cond_8

    if-eq v4, v1, :cond_8

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzeok;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-ne v4, v1, :cond_b

    if-eqz v5, :cond_a

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqt:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzeoe;->zzaq([B)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/zzeok;

    const-string v1, "PING frame too long"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/zzeok;

    const-string v1, "PING must not fragment across frames"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqv:Lcom/google/android/gms/internal/zzenz;

    if-eqz v0, :cond_d

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/zzeok;

    const-string v1, "Failed to continue outstanding frame"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_5
    if-nez v0, :cond_f

    if-eqz v4, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/zzeok;

    const-string v1, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_6
    if-nez v0, :cond_11

    if-ne v4, v10, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/zzeny;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeny;-><init>()V

    goto :goto_7

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/zzeoa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeoa;-><init>()V

    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqv:Lcom/google/android/gms/internal/zzenz;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqv:Lcom/google/android/gms/internal/zzenz;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzenz;->zzao([B)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqv:Lcom/google/android/gms/internal/zzenz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenz;->zzcda()Lcom/google/android/gms/internal/zzeom;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeon;->zznqv:Lcom/google/android/gms/internal/zzenz;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeon;->zznpx:Lcom/google/android/gms/internal/zzeoj;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzeoj;->zza(Lcom/google/android/gms/internal/zzeom;)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/zzeok;

    const-string v1, "Failed to decode whole message"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzeok;

    const-string v1, "Failed to decode frame"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zzeok;

    const-string v1, "Invalid frame received"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/zzeok; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzeon;->zzc(Lcom/google/android/gms/internal/zzeok;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzeok;

    const-string v2, "IO Error"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzeok;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzeon;->zzc(Lcom/google/android/gms/internal/zzeok;)V

    goto/16 :goto_0

    :catch_2
    nop

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method final zza(Ljava/io/DataInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeon;->zznqs:Ljava/io/DataInputStream;

    return-void
.end method

.method final zzcdj()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeon;->zznqw:Z

    return-void
.end method
