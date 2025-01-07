.class public final Lcom/google/android/gms/internal/zzbjy;
.super Ljava/lang/Object;


# instance fields
.field private final zzgnb:Lcom/google/android/gms/internal/zzffg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzffg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffg;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjy;->zzgnb:Lcom/google/android/gms/internal/zzffg;

    return-void
.end method

.method public static zza([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/internal/zzbjy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbjy;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzbjy;->zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzffg;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjy;-><init>(Lcom/google/android/gms/internal/zzffg;)V

    return-object v0
.end method

.method private static zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzffg;
    .locals 2

    new-instance p2, Lcom/google/android/gms/internal/zzffg;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzffg;-><init>()V

    iput p0, p2, Lcom/google/android/gms/internal/zzffg;->zzpkl:I

    array-length p0, p1

    new-array p0, p0, [Lcom/google/android/gms/internal/zzffh;

    iput-object p0, p2, Lcom/google/android/gms/internal/zzffg;->zzpko:[Lcom/google/android/gms/internal/zzffh;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p2, Lcom/google/android/gms/internal/zzffg;->zzpkm:J

    const/4 p0, 0x0

    :goto_0
    array-length p3, p1

    if-ge p0, p3, :cond_0

    aget-object p3, p1, p0

    check-cast p3, Lcom/google/android/gms/internal/zzayq;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzffg;->zzpko:[Lcom/google/android/gms/internal/zzffh;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzayq;->zzadf()Lcom/google/android/gms/internal/zzffh;

    move-result-object p3

    aput-object p3, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static zzb([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/internal/zzbjy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbjy;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzbjy;->zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzffg;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjy;-><init>(Lcom/google/android/gms/internal/zzffg;)V

    return-object v0
.end method

.method public static zzc([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/internal/zzbjy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbjy;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzbjy;->zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzffg;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjy;-><init>(Lcom/google/android/gms/internal/zzffg;)V

    return-object v0
.end method


# virtual methods
.method public final zzaoy()Lcom/google/android/gms/internal/zzffg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjy;->zzgnb:Lcom/google/android/gms/internal/zzffg;

    return-object v0
.end method
