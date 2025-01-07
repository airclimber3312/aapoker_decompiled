.class public final Lcom/google/android/gms/internal/zzbky;
.super Ljava/lang/Object;


# instance fields
.field private final zzgnx:Lcom/google/android/gms/internal/zzfgc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfgc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbky;->zzgnx:Lcom/google/android/gms/internal/zzfgc;

    return-void
.end method

.method public static zzm(II)Lcom/google/android/gms/internal/zzbky;
    .locals 2

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbky;

    new-instance v1, Lcom/google/android/gms/internal/zzfgc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfgc;-><init>()V

    iput p0, v1, Lcom/google/android/gms/internal/zzfgc;->zzpkl:I

    iput p1, v1, Lcom/google/android/gms/internal/zzfgc;->zzpna:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbky;-><init>(Lcom/google/android/gms/internal/zzfgc;)V

    return-object v0
.end method


# virtual methods
.method public final zzapc()Lcom/google/android/gms/internal/zzfgc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbky;->zzgnx:Lcom/google/android/gms/internal/zzfgc;

    return-object v0
.end method
