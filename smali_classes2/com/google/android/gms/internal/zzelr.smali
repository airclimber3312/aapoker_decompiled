.class public final Lcom/google/android/gms/internal/zzelr;
.super Ljava/lang/Object;


# static fields
.field public static final zznmi:Lcom/google/android/gms/internal/zzelr;


# instance fields
.field private zznme:Lcom/google/android/gms/internal/zzenf;

.field private zznmj:Ljava/lang/Integer;

.field private zznmk:I

.field private zznml:Lcom/google/android/gms/internal/zzenn;

.field private zznmm:Lcom/google/android/gms/internal/zzemq;

.field private zznmn:Lcom/google/android/gms/internal/zzenn;

.field private zznmo:Lcom/google/android/gms/internal/zzemq;

.field private zznmp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzelr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzelr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzelr;->zznmi:Lcom/google/android/gms/internal/zzelr;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    invoke-static {}, Lcom/google/android/gms/internal/zzens;->zzccy()Lcom/google/android/gms/internal/zzens;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmp:Ljava/lang/String;

    return-void
.end method

.method public static zzao(Ljava/util/Map;)Lcom/google/android/gms/internal/zzelr;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzelr;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzelr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzelr;-><init>()V

    const-string v1, "l"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    const-string v2, "sp"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzelr;->zze(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    const-string v2, "sn"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    :cond_0
    const-string v2, "ep"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzelr;->zze(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    const-string v2, "en"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    :cond_1
    const-string v2, "vf"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/gms/internal/zzelt;->zznmr:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/google/android/gms/internal/zzelt;->zznms:I

    :goto_0
    iput v1, v0, Lcom/google/android/gms/internal/zzelr;->zznmk:I

    :cond_3
    const-string v1, "i"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_7

    const-string v1, ".value"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzenx;->zzccz()Lcom/google/android/gms/internal/zzenx;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string v1, ".key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzenh;->zzccu()Lcom/google/android/gms/internal/zzenh;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string v1, ".priority"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzenr;

    new-instance v2, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzenr;-><init>(Lcom/google/android/gms/internal/zzegu;)V

    move-object p0, v1

    :goto_1
    iput-object p0, v0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "queryDefinition shouldn\'t ever be .priority since it\'s the default"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    return-object v0
.end method

.method private final zzcbb()Lcom/google/android/gms/internal/zzelr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzelr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzelr;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    iget v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmk:I

    iput v1, v0, Lcom/google/android/gms/internal/zzelr;->zznmk:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    return-object v0
.end method

.method private static zze(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/internal/zzenv;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/zzemp;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/zzend;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/zzene;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/zzenl;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzend;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzend;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected value passed to normalizeValue: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzelr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    if-eqz v2, :cond_d

    :goto_5
    return v1

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbc()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelr;->zzcbc()Z

    move-result p1

    if-eq v2, p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_6
    return v1
.end method

.method public final getLimit()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get limit if limit has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbc()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzemq;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzemq;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-static {}, Lcom/google/android/gms/internal/zzens;->zzccy()Lcom/google/android/gms/internal/zzens;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbd()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzelr;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbb()Lcom/google/android/gms/internal/zzelr;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzelr;
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzenl;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzepd;->zzcw(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbb()Lcom/google/android/gms/internal/zzelr;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzelr;
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzenl;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzepd;->zzcw(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbb()Lcom/google/android/gms/internal/zzelr;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    return-object v0
.end method

.method public final zzcas()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcat()Lcom/google/android/gms/internal/zzenn;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzcau()Lcom/google/android/gms/internal/zzemq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbw()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzcav()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcaw()Lcom/google/android/gms/internal/zzenn;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzcax()Lcom/google/android/gms/internal/zzemq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzcay()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcaz()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmk:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcba()Lcom/google/android/gms/internal/zzenf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    return-object v0
.end method

.method public final zzcbc()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmk:I

    if-eqz v0, :cond_1

    sget v1, Lcom/google/android/gms/internal/zzelt;->zznmr:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    return v0
.end method

.method public final zzcbd()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznml:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmm:Lcom/google/android/gms/internal/zzemq;

    if-eqz v1, :cond_0

    const-string v2, "sn"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmn:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ep"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmo:Lcom/google/android/gms/internal/zzemq;

    if-eqz v1, :cond_1

    const-string v2, "en"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const-string v2, "l"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/zzelr;->zznmk:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/gms/internal/zzelt;->zznmr:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/google/android/gms/internal/zzelt;->zznms:I

    :cond_3
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/zzels;->zznmq:[I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    aget v1, v3, v1

    const-string v3, "vf"

    if-eq v1, v4, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "r"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-static {}, Lcom/google/android/gms/internal/zzens;->zzccy()Lcom/google/android/gms/internal/zzens;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenf;->zzccq()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public final zzcbe()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcbf()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmp:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbd()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeor;->zzbx(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzelr;->zznmp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzcbg()Lcom/google/android/gms/internal/zzemg;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbe()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzeme;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelr;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeme;-><init>(Lcom/google/android/gms/internal/zzenf;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcay()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzemf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzemf;-><init>(Lcom/google/android/gms/internal/zzelr;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzemi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzemi;-><init>(Lcom/google/android/gms/internal/zzelr;)V

    return-object v0
.end method

.method public final zzhi(I)Lcom/google/android/gms/internal/zzelr;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbb()Lcom/google/android/gms/internal/zzelr;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    sget p1, Lcom/google/android/gms/internal/zzelt;->zznmr:I

    iput p1, v0, Lcom/google/android/gms/internal/zzelr;->zznmk:I

    return-object v0
.end method

.method public final zzhj(I)Lcom/google/android/gms/internal/zzelr;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzelr;->zzcbb()Lcom/google/android/gms/internal/zzelr;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/zzelr;->zznmj:Ljava/lang/Integer;

    sget p1, Lcom/google/android/gms/internal/zzelt;->zznms:I

    iput p1, v0, Lcom/google/android/gms/internal/zzelr;->zznmk:I

    return-object v0
.end method
