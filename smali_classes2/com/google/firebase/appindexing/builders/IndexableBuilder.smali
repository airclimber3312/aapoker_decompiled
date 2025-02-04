.class public Lcom/google/firebase/appindexing/builders/IndexableBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private final zzegs:Landroid/os/Bundle;

.field private zzmnz:Lcom/google/firebase/appindexing/internal/Thing$zza;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzegs:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->type:Ljava/lang/String;

    return-void
.end method

.method private final varargs zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/firebase/appindexing/internal/Thing;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    aget-object v3, p2, v1

    aput-object v3, p2, v2

    aget-object v3, p2, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Thing at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is null and is ignored by put method."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_3

    invoke-static {p2, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/firebase/appindexing/internal/Thing;

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzegs:Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzd([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_2
    const-string p1, "Thing array is empty and is ignored by put method."

    invoke-static {p1}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-object p0
.end method

.method public static varargs zza(Landroid/os/Bundle;Ljava/lang/String;[J)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Input Array of elements is too big, cutting off."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void

    :cond_1
    const-string p0, "Long array is empty and is ignored by put method."

    invoke-static {p0}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    return-void
.end method

.method private static zzd([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">([TS;)[TS;"
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Input Array of elements is too big, cutting off."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/google/firebase/appindexing/Indexable;
    .locals 5

    new-instance v0, Lcom/google/firebase/appindexing/internal/Thing;

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzegs:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzmnz:Lcom/google/firebase/appindexing/internal/Thing$zza;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;

    invoke-direct {v2}, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbte()Lcom/google/firebase/appindexing/internal/Thing$zza;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/appindexing/internal/Thing;-><init>(Landroid/os/Bundle;Lcom/google/firebase/appindexing/internal/Thing$zza;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs put(Ljava/lang/String;[J)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzegs:Landroid/os/Bundle;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Landroid/os/Bundle;Ljava/lang/String;[J)V

    return-object p0
.end method

.method public varargs put(Ljava/lang/String;[Lcom/google/firebase/appindexing/Indexable;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/firebase/appindexing/Indexable;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    new-array v0, v0, [Lcom/google/firebase/appindexing/internal/Thing;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/google/firebase/appindexing/internal/Thing;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;

    const-string p2, "Invalid Indexable encountered. Use Indexable.Builder or convenience methods under Indexables to create the Indexable."

    invoke-direct {p1, p2}, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    check-cast v2, Lcom/google/firebase/appindexing/internal/Thing;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    return-object p0
.end method

.method protected varargs put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/google/firebase/appindexing/builders/IndexableBuilder;",
            ">(",
            "Ljava/lang/String;",
            "[TS;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_2

    array-length v0, p2

    new-array v1, v0, [Lcom/google/firebase/appindexing/internal/Thing;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Builder at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is null and is ignored by put method."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->build()Lcom/google/firebase/appindexing/Indexable;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/appindexing/internal/Thing;

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    goto :goto_2

    :cond_2
    const-string p1, "Builder array is empty and is ignored by put method."

    invoke-static {p1}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-object p0
.end method

.method public varargs put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzegs:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    array-length v1, p2

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    const/16 v5, 0x64

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_4

    aget-object v4, p2, v2

    aput-object v4, p2, v3

    aget-object v5, p2, v2

    const-string v6, "String at "

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is null and is ignored by put method."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x4e20

    if-le v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x35

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is too long, truncating string."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0x4e1f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v5, 0x4e1f

    :cond_2
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, p2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-lez v3, :cond_6

    invoke-static {p2, v1, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzd([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "String array is empty and is ignored by put method."

    invoke-static {p1}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-object p0
.end method

.method public varargs put(Ljava/lang/String;[Z)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzegs:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p2

    if-lez v1, :cond_1

    array-length v1, p2

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Input Array of elements is too big, cutting off."

    invoke-static {v1}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_1

    :cond_1
    const-string p1, "Boolean array is empty and is ignored by put method."

    invoke-static {p1}, Lcom/google/firebase/appindexing/internal/zzw;->zzoz(Ljava/lang/String;)I

    :goto_1
    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "description"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setImage(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "image"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs setKeywords([Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "keywords"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMetadata(Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzmnz:Lcom/google/firebase/appindexing/internal/Thing$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "setMetadata may only be called once"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbte()Lcom/google/firebase/appindexing/internal/Thing$zza;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzmnz:Lcom/google/firebase/appindexing/internal/Thing$zza;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "name"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setSameAs(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "sameAs"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->url:Ljava/lang/String;

    return-object p0
.end method
