.class public final Lcom/google/android/gms/internal/zzegc;
.super Ljava/io/Reader;


# instance fields
.field private closed:Z

.field private zzndq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzndr:I

.field private zznds:I

.field private zzndt:I

.field private zzndu:I

.field private zzndv:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndq:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegc;->closed:Z

    iget v1, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    iput v1, p0, Lcom/google/android/gms/internal/zzegc;->zzndt:I

    iget v1, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    iput v1, p0, Lcom/google/android/gms/internal/zzegc;->zzndu:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndv:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndq:Ljava/util/List;

    return-void
.end method

.method private final zzbv(J)J
    .locals 7

    const-wide/16 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegc;->zzndq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxw()I

    move-result v2

    sub-long v3, p1, v0

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    int-to-long v5, v2

    add-long/2addr v5, v3

    long-to-int v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    add-long/2addr v0, v5

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    iget v2, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private final zzbxv()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegc;->zzndq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndq:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzbxw()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxv()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private final zzbxx()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegc;->closed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndv:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader needs to be frozen before read operations can be called"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxx()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegc;->closed:Z

    return-void
.end method

.method public final mark(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxx()V

    iget p1, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    iput p1, p0, Lcom/google/android/gms/internal/zzegc;->zzndt:I

    iget p1, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    iput p1, p0, Lcom/google/android/gms/internal/zzegc;->zzndu:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxx()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxv()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzegc;->zzbv(J)J

    return v0
.end method

.method public final read(Ljava/nio/CharBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxx()V

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxv()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegc;->zzndq:Ljava/util/List;

    iget v4, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    add-int v5, v4, v1

    invoke-virtual {p1, v3, v4, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    sub-int/2addr v0, v1

    add-int/2addr v2, v1

    int-to-long v3, v1

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/zzegc;->zzbv(J)J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxv()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-gtz v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    :goto_1
    return v2
.end method

.method public final read([CII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxx()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxv()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    if-ge v1, p3, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxw()I

    move-result v2

    sub-int v3, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    add-int v4, v3, v2

    add-int v5, p2, v1

    invoke-virtual {v0, v3, v4, p1, v5}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzegc;->zzbv(J)J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxv()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gtz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method public final ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxx()V

    const/4 v0, 0x1

    return v0
.end method

.method public final reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndt:I

    iput v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndr:I

    iget v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndu:I

    iput v0, p0, Lcom/google/android/gms/internal/zzegc;->zznds:I

    return-void
.end method

.method public final skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegc;->zzbxx()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzegc;->zzbv(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegc;->zzndq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxu()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndv:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndv:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to freeze frozen StringListReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzpz(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndv:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegc;->zzndq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to add string after reading"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
