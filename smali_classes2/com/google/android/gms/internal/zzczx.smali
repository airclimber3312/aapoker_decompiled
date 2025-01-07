.class final Lcom/google/android/gms/internal/zzczx;
.super Ljava/lang/Object;


# instance fields
.field private final zzedk:J

.field private final zzkpu:J

.field private final zzkpv:J

.field private zzkpw:Ljava/lang/String;

.field private zzkwo:Ljava/lang/String;

.field private zzkwp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzkwq:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzczx;->zzkpu:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzczx;->zzedk:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzczx;->zzkpv:J

    return-void
.end method


# virtual methods
.method final zzad(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczx;->zzkwp:Ljava/util/Map;

    return-void
.end method

.method final zzbgr()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzczx;->zzkpu:J

    return-wide v0
.end method

.method final zzbgs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzczx;->zzkpv:J

    return-wide v0
.end method

.method final zzbgt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczx;->zzkpw:Ljava/lang/String;

    return-object v0
.end method

.method final zzbis()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczx;->zzkwo:Ljava/lang/String;

    return-object v0
.end method

.method final zzbit()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczx;->zzkwp:Ljava/util/Map;

    return-object v0
.end method

.method final zzbiu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczx;->zzkwq:Ljava/lang/String;

    return-object v0
.end method

.method final zzlv(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzczx;->zzkpw:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method final zzmn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczx;->zzkwo:Ljava/lang/String;

    return-void
.end method

.method final zzmo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczx;->zzkwq:Ljava/lang/String;

    return-void
.end method
