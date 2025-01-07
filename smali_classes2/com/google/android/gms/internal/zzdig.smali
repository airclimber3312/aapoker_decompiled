.class final Lcom/google/android/gms/internal/zzdig;
.super Lcom/google/android/gms/internal/zzdid;


# instance fields
.field private final zzlbd:Lcom/google/android/gms/internal/zzdif;

.field private final zzlbe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlbf:I

.field private synthetic zzlbg:Lcom/google/android/gms/internal/zzdie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdie;ILcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdii;Ljava/util/List;ILcom/google/android/gms/internal/zzdif;Lcom/google/android/gms/internal/zzczp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/zzdim;",
            "Lcom/google/android/gms/internal/zzdii;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/zzdif;",
            "Lcom/google/android/gms/internal/zzczp;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdig;->zzlbg:Lcom/google/android/gms/internal/zzdie;

    invoke-direct {p0, p2, p3, p4, p8}, Lcom/google/android/gms/internal/zzdid;-><init>(ILcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdii;Lcom/google/android/gms/internal/zzczp;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdig;->zzlbd:Lcom/google/android/gms/internal/zzdif;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdig;->zzlbe:Ljava/util/List;

    iput p6, p0, Lcom/google/android/gms/internal/zzdig;->zzlbf:I

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzdin;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->zzbjw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v4, "Container resource successfully loaded from "

    if-eqz v1, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->getSource()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->zzbju()Lcom/google/android/gms/internal/zzdio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdio;->zzbjy()Lcom/google/android/gms/internal/zzdia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdia;->zzbjp()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdig;->zzlbg:Lcom/google/android/gms/internal/zzdie;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/zzdie;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzdio;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdio;->zzbjx()[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdio;->zzbjx()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdig;->zzlbg:Lcom/google/android/gms/internal/zzdie;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdie;->zza(Lcom/google/android/gms/internal/zzdie;)Lcom/google/android/gms/internal/zzdip;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdio;->zzbjy()Lcom/google/android/gms/internal/zzdia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdia;->zzbjo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdio;->zzbjx()[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzdip;->zzd(Ljava/lang/String;[B)V

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdig;->zzlbd:Lcom/google/android/gms/internal/zzdif;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzdif;->zza(Lcom/google/android/gms/internal/zzdin;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->zzbjw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SUCCESS"

    goto :goto_1

    :cond_4
    const-string v1, "FAILURE"

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot fetch a valid resource from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Response status: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->zzbjw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "Response source: "

    if-eqz v1, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->zzbju()Lcom/google/android/gms/internal/zzdio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdio;->zzbjx()[B

    move-result-object p1

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Response size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdig;->zzlbg:Lcom/google/android/gms/internal/zzdie;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdig;->zzlay:Lcom/google/android/gms/internal/zzdim;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdig;->zzlbe:Ljava/util/List;

    iget p1, p0, Lcom/google/android/gms/internal/zzdig;->zzlbf:I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/zzdig;->zzlbd:Lcom/google/android/gms/internal/zzdif;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzdig;->zzkvu:Lcom/google/android/gms/internal/zzczp;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzdie;->zza(Lcom/google/android/gms/internal/zzdim;Ljava/util/List;ILcom/google/android/gms/internal/zzdif;Lcom/google/android/gms/internal/zzczp;)V

    return-void
.end method
