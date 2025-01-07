.class public final Lcom/google/android/gms/internal/zzdjj;
.super Ljava/lang/Object;


# instance fields
.field private final zzlcg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdje;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdje;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlci:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdje;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlcj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdje;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjj;->zzlcg:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjj;->zzlch:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjj;->zzlci:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjj;->zzlcj:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzbkj()Lcom/google/android/gms/internal/zzdjh;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzdjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdjj;->zzlcg:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdjj;->zzlch:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdjj;->zzlci:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdjj;->zzlcj:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdjh;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzdji;)V

    return-object v6
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzdje;)Lcom/google/android/gms/internal/zzdjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjj;->zzlcg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzdje;)Lcom/google/android/gms/internal/zzdjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjj;->zzlch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/zzdje;)Lcom/google/android/gms/internal/zzdjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjj;->zzlci:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzdje;)Lcom/google/android/gms/internal/zzdjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjj;->zzlcj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
