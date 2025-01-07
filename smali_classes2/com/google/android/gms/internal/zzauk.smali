.class public final Lcom/google/android/gms/internal/zzauk;
.super Ljava/lang/Object;


# instance fields
.field private final name:Ljava/lang/String;

.field private weight:I

.field private zzefx:Ljava/lang/String;

.field private zzefy:Z

.field private zzefz:Z

.field private zzegc:Ljava/lang/String;

.field private final zzege:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzaue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauk;->name:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzauk;->weight:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauk;->zzege:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzabq()Lcom/google/android/gms/internal/zzauj;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/zzauj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauk;->zzefx:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzauk;->zzefy:Z

    iget v4, p0, Lcom/google/android/gms/internal/zzauk;->weight:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzauk;->zzefz:Z

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/internal/zzaue;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/google/android/gms/internal/zzaue;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzauk;->zzegc:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzauj;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;Lcom/google/android/gms/internal/zzaum;)V

    return-object v10
.end method

.method public final zzaq(Z)Lcom/google/android/gms/internal/zzauk;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzauk;->zzefy:Z

    return-object p0
.end method

.method public final zzar(Z)Lcom/google/android/gms/internal/zzauk;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzauk;->zzefz:Z

    return-object p0
.end method

.method public final zzeu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauk;->zzefx:Ljava/lang/String;

    return-object p0
.end method

.method public final zzev(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauk;->zzegc:Ljava/lang/String;

    return-object p0
.end method
