.class public final Lcom/google/android/gms/internal/zzenm;
.super Ljava/lang/Object;


# static fields
.field private static final zznpd:Lcom/google/android/gms/internal/zzenm;

.field private static final zznpe:Lcom/google/android/gms/internal/zzenm;


# instance fields
.field private final zznlh:Lcom/google/android/gms/internal/zzemq;

.field private final zznou:Lcom/google/android/gms/internal/zzenn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzenm;

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbw()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    sput-object v0, Lcom/google/android/gms/internal/zzenm;->zznpd:Lcom/google/android/gms/internal/zzenm;

    new-instance v0, Lcom/google/android/gms/internal/zzenm;

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzenn;->zznpf:Lcom/google/android/gms/internal/zzems;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    sput-object v0, Lcom/google/android/gms/internal/zzenm;->zznpe:Lcom/google/android/gms/internal/zzenm;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzenm;->zznlh:Lcom/google/android/gms/internal/zzemq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzenm;->zznou:Lcom/google/android/gms/internal/zzenn;

    return-void
.end method

.method public static zzccv()Lcom/google/android/gms/internal/zzenm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzenm;->zznpd:Lcom/google/android/gms/internal/zzenm;

    return-object v0
.end method

.method public static zzccw()Lcom/google/android/gms/internal/zzenm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzenm;->zznpe:Lcom/google/android/gms/internal/zzenm;

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

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzenm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzenm;->zznlh:Lcom/google/android/gms/internal/zzemq;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzenm;->zznlh:Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzenm;->zznou:Lcom/google/android/gms/internal/zzenn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzenm;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenm;->zznlh:Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemq;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzenm;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenm;->zznlh:Lcom/google/android/gms/internal/zzemq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzenm;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NamedNode{name="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", node="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbve()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenm;->zznou:Lcom/google/android/gms/internal/zzenn;

    return-object v0
.end method

.method public final zzccx()Lcom/google/android/gms/internal/zzemq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenm;->zznlh:Lcom/google/android/gms/internal/zzemq;

    return-object v0
.end method
