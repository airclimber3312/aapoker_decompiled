.class public final Lcom/google/android/gms/internal/zzekw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/android/gms/internal/zzegu;",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final zznlc:Lcom/google/android/gms/internal/zzedq;

.field private static final zznld:Lcom/google/android/gms/internal/zzekw;


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zznlb:Lcom/google/android/gms/internal/zzedq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzedq<",
            "Lcom/google/android/gms/internal/zzemq;",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzemq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeek;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzeek;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedr;->zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzekw;->zznlc:Lcom/google/android/gms/internal/zzedq;

    new-instance v1, Lcom/google/android/gms/internal/zzekw;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzedq;)V

    sput-object v1, Lcom/google/android/gms/internal/zzekw;->zznld:Lcom/google/android/gms/internal/zzekw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzekw;->zznlc:Lcom/google/android/gms/internal/zzedq;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzedq;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzedq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/zzedq<",
            "Lcom/google/android/gms/internal/zzemq;",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekz;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzekz<",
            "-TT;TR;>;TR;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-direct {v2, v1, p2, p3}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method public static zzcaf()Lcom/google/android/gms/internal/zzekw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzekw<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzekw;->zznld:Lcom/google/android/gms/internal/zzekw;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzekw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzedq;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/android/gms/internal/zzegu;",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzeky;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzeky;-><init>(Lcom/google/android/gms/internal/zzekw;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzekz;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmutableTree { value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzekx;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzekx;-><init>(Lcom/google/android/gms/internal/zzekw;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzekz;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Lcom/google/android/gms/internal/zzegu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzela<",
            "-TT;>;)",
            "Lcom/google/android/gms/internal/zzegu;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekw;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/zzegu;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzemq;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekw;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzekw;->zznld:Lcom/google/android/gms/internal/zzekw;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekw;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedq;->zzbj(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzedq;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/zzekw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzedq;)V

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzekz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzekz<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekz;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzaf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzela;->zznlg:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    return-object p1
.end method

.method public final zzag(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzela;->zznlg:Lcom/google/android/gms/internal/zzela;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzemq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekw;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public final zzah(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekw;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/zzekw;->zznld:Lcom/google/android/gms/internal/zzekw;

    return-object p1
.end method

.method public final zzai(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedq;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzekw;->zznld:Lcom/google/android/gms/internal/zzekw;

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzekw;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzedq;)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekw;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzekw;->zzai(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekw;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedq;->zzbj(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/zzedq;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/zzekw;->zznld:Lcom/google/android/gms/internal/zzekw;

    return-object p1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzekw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzedq;)V

    return-object v0

    :cond_4
    return-object p0
.end method

.method public final zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")TT;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekw;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "TT;)",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzekw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzedq;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekw;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzekw;->zznld:Lcom/google/android/gms/internal/zzekw;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzedq;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzekw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzedq;)V

    return-object p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzela<",
            "-TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzemq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekw;

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    return-object p1

    :cond_3
    return-object v2
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/google/android/gms/internal/zzekz<",
            "-TT;TR;>;)TR;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzela;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzela<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzela;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final zzcag()Lcom/google/android/gms/internal/zzedq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzedq<",
            "Lcom/google/android/gms/internal/zzemq;",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzekw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzemq;",
            ")",
            "Lcom/google/android/gms/internal/zzekw<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekw;->zznlb:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzekw;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzekw;->zznld:Lcom/google/android/gms/internal/zzekw;

    return-object p1
.end method
