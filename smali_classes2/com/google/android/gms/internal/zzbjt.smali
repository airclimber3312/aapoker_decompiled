.class public final Lcom/google/android/gms/internal/zzbjt;
.super Ljava/lang/Object;


# instance fields
.field private final zzgmx:Lcom/google/android/gms/internal/zzffe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzffe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffe;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjt;->zzgmx:Lcom/google/android/gms/internal/zzffe;

    return-void
.end method

.method public static zza(I[I)Lcom/google/android/gms/internal/zzbjt;
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbjt;

    new-instance v1, Lcom/google/android/gms/internal/zzffe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzffe;-><init>()V

    iput p0, v1, Lcom/google/android/gms/internal/zzffe;->zzpkl:I

    const-wide/16 v2, 0xbb8

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzffe;->zzpkm:J

    iput-object p1, v1, Lcom/google/android/gms/internal/zzffe;->zzpkn:[I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjt;-><init>(Lcom/google/android/gms/internal/zzffe;)V

    return-object v0
.end method


# virtual methods
.method public final zzaou()Lcom/google/android/gms/internal/zzffe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjt;->zzgmx:Lcom/google/android/gms/internal/zzffe;

    return-object v0
.end method
