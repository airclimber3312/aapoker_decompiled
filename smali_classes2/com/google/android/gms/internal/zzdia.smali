.class public final Lcom/google/android/gms/internal/zzdia;
.super Ljava/lang/Object;


# instance fields
.field private final zzknc:Ljava/lang/String;

.field private final zzksd:Ljava/lang/String;

.field private final zzkvo:Ljava/lang/String;

.field private final zzlav:Ljava/lang/String;

.field private final zzlaw:Z

.field private final zzlax:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzdia;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdia;->zzknc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdia;->zzkvo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdia;->zzlav:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzdia;->zzlaw:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdia;->zzlax:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzdia;->zzksd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzknc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbjm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzkvo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbjn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlav:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbjo()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlav:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdia;->zzknc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzknc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbjp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlaw:Z

    return v0
.end method

.method public final zzbjq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlax:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbjr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzksd:Ljava/lang/String;

    return-object v0
.end method
