.class final Lcom/google/android/gms/internal/zzfba;
.super Ljava/lang/Object;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final zzoxj:Ljava/lang/Object;

.field private final zzy:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfba;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfba;->zzy:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfba;->zzoxj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzfba;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzfba;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfba;->zzoxj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfba;->zzoxj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfba;->zzy:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfba;->zzy:Ljava/lang/Runnable;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfba;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfba;->mActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfba;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfba;->zzoxj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzbmh()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfba;->zzy:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final zzcol()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfba;->zzoxj:Ljava/lang/Object;

    return-object v0
.end method
