.class public final Lcom/google/android/gms/internal/zzelp;
.super Ljava/lang/Object;


# instance fields
.field private final zzmxz:Lcom/google/android/gms/internal/zzemm;

.field private final zznei:Lcom/google/android/gms/internal/zzegt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegm;->zzbyj()Lcom/google/android/gms/internal/zzegt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzelp;->zznei:Lcom/google/android/gms/internal/zzegt;

    const-string v0, "EventRaiser"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegm;->zzqb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzelp;)Lcom/google/android/gms/internal/zzemm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzelp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    return-object p0
.end method


# virtual methods
.method public final zzay(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Raising "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event(s)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzelp;->zznei:Lcom/google/android/gms/internal/zzegt;

    new-instance v1, Lcom/google/android/gms/internal/zzelq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzelq;-><init>(Lcom/google/android/gms/internal/zzelp;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzegt;->zzn(Ljava/lang/Runnable;)V

    return-void
.end method
