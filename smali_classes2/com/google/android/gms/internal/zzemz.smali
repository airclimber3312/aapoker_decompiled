.class final Lcom/google/android/gms/internal/zzemz;
.super Ljava/lang/Object;


# instance fields
.field private zznoh:Ljava/lang/StringBuilder;

.field private zznoi:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/zzemq;",
            ">;"
        }
    .end annotation
.end field

.field private zznoj:I

.field private zznok:I

.field private zznol:Z

.field private final zznom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzegu;",
            ">;"
        }
    .end annotation
.end field

.field private final zznon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznoo:Lcom/google/android/gms/internal/zzenb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzenb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoi:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoj:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzemz;->zznol:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznom:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznon:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzemz;->zznoo:Lcom/google/android/gms/internal/zzenb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzemz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzccm()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzemz;Lcom/google/android/gms/internal/zzemq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzemz;->zzn(Lcom/google/android/gms/internal/zzemq;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzemz;Lcom/google/android/gms/internal/zzeni;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzemz;->zzb(Lcom/google/android/gms/internal/zzeni;)V

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzemq;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepd;->zzql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzemz;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzemz;->zznom:Ljava/util/List;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzeni;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeni<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzcck()V

    iget v0, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    iput v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/zzenp;->zznph:Lcom/google/android/gms/internal/zzenp;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzeni;->zza(Lcom/google/android/gms/internal/zzenp;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzemz;->zznol:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzemz;->zznoo:Lcom/google/android/gms/internal/zzenb;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzenb;->zze(Lcom/google/android/gms/internal/zzemz;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzccn()V

    :cond_0
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzemz;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzemz;->zznon:Ljava/util/List;

    return-object p0
.end method

.method private final zzcch()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzcck()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzcch()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzemz;->zzhk(I)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzemq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzemz;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzemq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    const-string v2, ":("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzemz;->zznol:Z

    :cond_1
    return-void
.end method

.method private final zzccl()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzcch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzemz;->zznol:Z

    return-void
.end method

.method private final zzccm()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzcch()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzccn()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznon:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zzccn()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzcch()Z

    move-result v0

    const-string v1, "Can\'t end range without starting a range!"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    const-string v2, ")"

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoj:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzemz;->zzhk(I)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzepd;->zzqk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemz;->zznon:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzemz;->zznom:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzemz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzccl()V

    return-void
.end method

.method private final zzhk(I)Lcom/google/android/gms/internal/zzegu;
    .locals 3

    new-array v0, p1, [Lcom/google/android/gms/internal/zzemq;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemz;->zznoi:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzemq;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    return-object p1
.end method

.method private final zzn(Lcom/google/android/gms/internal/zzemq;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemz;->zzcck()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzemz;->zznol:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzemz;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzemq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzemz;->zznoi:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoi:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoi:Ljava/util/Stack;

    iget v1, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzemz;->zznol:Z

    return-void
.end method


# virtual methods
.method public final zzcci()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemz;->zznoh:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public final zzccj()Lcom/google/android/gms/internal/zzegu;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzemz;->zznok:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzemz;->zzhk(I)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    return-object v0
.end method
