.class public final Lcom/google/android/gms/internal/zzdgg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdcp;


# instance fields
.field private final zzlad:Lcom/google/android/gms/internal/zzczb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzczb;->zzep(Landroid/content/Context;)Lcom/google/android/gms/internal/zzczb;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdgg;-><init>(Lcom/google/android/gms/internal/zzczb;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzczb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdgg;->zzlad:Lcom/google/android/gms/internal/zzczb;

    return-void
.end method


# virtual methods
.method public final varargs zzb(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdbb;",
            "[",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length p2, p2

    if-nez p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance p1, Lcom/google/android/gms/internal/zzdjt;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdgg;->zzlad:Lcom/google/android/gms/internal/zzczb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzczb;->isLimitAdTrackingEnabled()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzdjt;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method
