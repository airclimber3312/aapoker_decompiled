.class public Lcom/google/firebase/database/MutableData;
.super Ljava/lang/Object;


# instance fields
.field private final zzmww:Lcom/google/android/gms/internal/zzeik;

.field private final zzmwx:Lcom/google/android/gms/internal/zzegu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    iput-object p2, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzejo;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/zzi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzegu;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzenn;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzeik;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeik;-><init>(Lcom/google/android/gms/internal/zzenn;)V

    new-instance p1, Lcom/google/android/gms/internal/zzegu;

    const-string v1, ""

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzegu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzeik;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzegu;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/MutableData;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepf;->zzqn(Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/database/MutableData;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    new-instance v3, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzegu;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/firebase/database/MutableData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    check-cast p1, Lcom/google/firebase/database/MutableData;

    iget-object v1, p1, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    iget-object p1, p1, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/database/MutableData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzeng;->zzj(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeng;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/zzk;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/zzk;-><init>(Lcom/google/firebase/database/MutableData;Ljava/util/Iterator;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/firebase/database/zzi;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/zzi;-><init>(Lcom/google/firebase/database/MutableData;)V

    return-object v0
.end method

.method public getChildrenCount()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyt()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyt()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->zzcce()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/GenericTypeIndicator<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzepg;->zza(Ljava/lang/Object;Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzepg;->zza(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasChildren()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPriority(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/zzent;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzenn;->zzf(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzeik;->zzg(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzejo;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepg;->zzca(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepf;->zzbz(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzeik;->zzg(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<none>"

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbza()Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzenn;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MutableData { key = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzbve()Lcom/google/android/gms/internal/zzenn;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzmww:Lcom/google/android/gms/internal/zzeik;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzmwx:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeik;->zzp(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    return-object v0
.end method
