.class public final Lcom/google/android/gms/internal/zzelv;
.super Ljava/lang/Object;


# instance fields
.field private final zznmd:Lcom/google/android/gms/internal/zzelu;

.field private final zznmu:Lcom/google/android/gms/internal/zzely;

.field private zznmv:Lcom/google/android/gms/internal/zzelx;

.field private final zznmw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzegr;",
            ">;"
        }
    .end annotation
.end field

.field private final zznmx:Lcom/google/android/gms/internal/zzeln;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzelx;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelv;->zznmd:Lcom/google/android/gms/internal/zzelu;

    new-instance v0, Lcom/google/android/gms/internal/zzeme;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeme;-><init>(Lcom/google/android/gms/internal/zzenf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelr;->zzcbg()Lcom/google/android/gms/internal/zzemg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzely;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzely;-><init>(Lcom/google/android/gms/internal/zzemg;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzelv;->zznmu:Lcom/google/android/gms/internal/zzely;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelx;->zzcbn()Lcom/google/android/gms/internal/zzelh;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelx;->zzcbl()Lcom/google/android/gms/internal/zzelh;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzeng;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelh;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/zzeme;->zza(Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzemd;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelh;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object v4

    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/internal/zzemg;->zza(Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzemd;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelh;->zzcai()Z

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelh;->zzcai()Z

    move-result p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzemg;->zzcbr()Z

    move-result v1

    invoke-direct {v0, v3, p2, v1}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    new-instance p2, Lcom/google/android/gms/internal/zzelx;

    invoke-direct {p2, v0, v4}, Lcom/google/android/gms/internal/zzelx;-><init>(Lcom/google/android/gms/internal/zzelh;Lcom/google/android/gms/internal/zzelh;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelv;->zznmv:Lcom/google/android/gms/internal/zzelx;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/zzeln;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzeln;-><init>(Lcom/google/android/gms/internal/zzelu;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelv;->zznmx:Lcom/google/android/gms/internal/zzeln;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzelj;",
            ">;",
            "Lcom/google/android/gms/internal/zzeng;",
            "Lcom/google/android/gms/internal/zzegr;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzelk;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzegr;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmx:Lcom/google/android/gms/internal/zzeln;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeln;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeng;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegr;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelv;->zznmd:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzegr;

    new-instance v4, Lcom/google/android/gms/internal/zzeli;

    invoke-direct {v4, v3, p2, v1}, Lcom/google/android/gms/internal/zzeli;-><init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzegu;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_5

    const/4 p2, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzegr;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzegr;->zzc(Lcom/google/android/gms/internal/zzegr;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzegr;->zzbym()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    if-eq v1, p2, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzegr;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegr;->zzbyl()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzegr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzegr;->zzbyl()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    :goto_3
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzelw;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejy;->zzbzt()Lcom/google/android/gms/internal/zzejz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzejz;->zznjs:Lcom/google/android/gms/internal/zzejz;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejy;->zzbzs()Lcom/google/android/gms/internal/zzeka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeka;->zzbzw()Lcom/google/android/gms/internal/zzelr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmv:Lcom/google/android/gms/internal/zzelx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelv;->zznmu:Lcom/google/android/gms/internal/zzely;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzely;->zza(Lcom/google/android/gms/internal/zzelx;Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzemb;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/zzemb;->zznmv:Lcom/google/android/gms/internal/zzelx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelv;->zznmv:Lcom/google/android/gms/internal/zzelx;

    iget-object p2, p1, Lcom/google/android/gms/internal/zzemb;->zznmz:Ljava/util/List;

    iget-object p3, p1, Lcom/google/android/gms/internal/zzemb;->zznmv:Lcom/google/android/gms/internal/zzelx;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelx;->zzcbl()Lcom/google/android/gms/internal/zzelh;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelh;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gms/internal/zzelv;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/zzelw;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzemb;->zznmz:Ljava/util/List;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/zzelw;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzegr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzcbi()Lcom/google/android/gms/internal/zzelu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmd:Lcom/google/android/gms/internal/zzelu;

    return-object v0
.end method

.method public final zzcbj()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmv:Lcom/google/android/gms/internal/zzelx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelx;->zzcbn()Lcom/google/android/gms/internal/zzelh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    return-object v0
.end method

.method public final zzcbk()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmv:Lcom/google/android/gms/internal/zzelx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelx;->zzcbl()Lcom/google/android/gms/internal/zzelh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegr;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzelk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmv:Lcom/google/android/gms/internal/zzelx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelx;->zzcbl()Lcom/google/android/gms/internal/zzelh;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzelj;->zzc(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzelj;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzcai()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzelj;->zza(Lcom/google/android/gms/internal/zzeng;)Lcom/google/android/gms/internal/zzelj;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/zzelv;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzr(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelv;->zznmv:Lcom/google/android/gms/internal/zzelx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelx;->zzcbo()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelv;->zznmd:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
