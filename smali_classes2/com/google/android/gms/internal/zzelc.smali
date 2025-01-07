.class public final Lcom/google/android/gms/internal/zzelc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zznlh:Lcom/google/android/gms/internal/zzemq;

.field private zznli:Lcom/google/android/gms/internal/zzelc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzelc<",
            "TT;>;"
        }
    .end annotation
.end field

.field private zznlj:Lcom/google/android/gms/internal/zzelg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzelg<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzelg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzelg;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/gms/internal/zzelc;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzelc;Lcom/google/android/gms/internal/zzelg;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzelc;Lcom/google/android/gms/internal/zzelg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzemq;",
            "Lcom/google/android/gms/internal/zzelc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzelg<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelc;->zznlh:Lcom/google/android/gms/internal/zzemq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelc;->zznli:Lcom/google/android/gms/internal/zzelc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    return-void
.end method

.method private final zzcah()V
    .locals 5

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/zzelc;->zznli:Lcom/google/android/gms/internal/zzelc;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzelc;->zznlh:Lcom/google/android/gms/internal/zzemq;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzelg;->value:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzelg;->zznhn:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v1, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzelg;->zznhn:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzelg;->zznhn:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzelg;->zznhn:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzelg;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzelg;->zznhn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzelg;->value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzelc;->zzcah()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelc;->zznlh:Lcom/google/android/gms/internal/zzemq;

    if-nez v0, :cond_0

    const-string v0, "<anon>"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    const-string v2, "\t"

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzelg;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelf;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelf<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzelg;->zznhn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Lcom/google/android/gms/internal/zzelc;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzemq;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzelg;

    invoke-direct {v3, v4, p0, v2}, Lcom/google/android/gms/internal/zzelc;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzelc;Lcom/google/android/gms/internal/zzelg;)V

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/zzelf;->zzd(Lcom/google/android/gms/internal/zzelc;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelf;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelf<",
            "TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzelf;->zzd(Lcom/google/android/gms/internal/zzelc;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzeld;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/gms/internal/zzeld;-><init>(Lcom/google/android/gms/internal/zzelc;Lcom/google/android/gms/internal/zzelf;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzelc;->zza(Lcom/google/android/gms/internal/zzelf;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzelf;->zzd(Lcom/google/android/gms/internal/zzelc;)V

    :cond_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzele;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzele<",
            "TT;>;Z)Z"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/zzelc;->zznli:Lcom/google/android/gms/internal/zzelc;

    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzele;->zze(Lcom/google/android/gms/internal/zzelc;)Z

    iget-object p2, p2, Lcom/google/android/gms/internal/zzelc;->zznli:Lcom/google/android/gms/internal/zzelc;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzak(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")",
            "Lcom/google/android/gms/internal/zzelc<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzelg;->zznhn:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzelc;->zznlj:Lcom/google/android/gms/internal/zzelg;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzelg;->zznhn:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzelg;

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzelg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzelg;-><init>()V

    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/zzelc;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/zzelc;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzelc;Lcom/google/android/gms/internal/zzelg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final zzbvh()Lcom/google/android/gms/internal/zzegu;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelc;->zznli:Lcom/google/android/gms/internal/zzelc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelc;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelc;->zznlh:Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzelc;->zznlh:Lcom/google/android/gms/internal/zzemq;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzegu;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzemq;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzelc;->zznlh:Lcom/google/android/gms/internal/zzemq;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    return-object v0
.end method
