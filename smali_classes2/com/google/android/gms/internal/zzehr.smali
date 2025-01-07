.class final Lcom/google/android/gms/internal/zzehr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzejj;


# instance fields
.field final synthetic zznfo:Lcom/google/android/gms/internal/zzegx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehr;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejk;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehr;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzegx;->zzc(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeew;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelr;->zzcbd()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejk;Lcom/google/android/gms/internal/zzeev;Lcom/google/android/gms/internal/zzejg;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehr;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegx;->zzc(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeew;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelr;->zzcbd()Ljava/util/Map;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejk;->zzbzg()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    new-instance v6, Lcom/google/android/gms/internal/zzehs;

    invoke-direct {v6, p0, p4}, Lcom/google/android/gms/internal/zzehs;-><init>(Lcom/google/android/gms/internal/zzehr;Lcom/google/android/gms/internal/zzejg;)V

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeev;Ljava/lang/Long;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method
