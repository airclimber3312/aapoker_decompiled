.class public final Lcom/google/android/gms/internal/zzdnp;
.super Lcom/google/android/gms/internal/zzdno;


# instance fields
.field protected final animator:Landroid/animation/Animator;

.field private final zzlxs:Ljava/lang/Runnable;

.field private final zzlxt:I

.field private zzlxu:I

.field private zzlxv:Lcom/google/android/gms/internal/zzdnt;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdno;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/zzdnq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzdnq;-><init>(Lcom/google/android/gms/internal/zzdnp;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxv:Lcom/google/android/gms/internal/zzdnt;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdnp;->animator:Landroid/animation/Animator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxt:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxs:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdnp;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxu:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxu:I

    return v0
.end method

.method public static zza(Landroid/animation/Animator;ILjava/lang/Runnable;)V
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/zzdnp;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/gms/internal/zzdnp;-><init>(Landroid/animation/Animator;ILjava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdnp;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdnp;->zzbme()Z

    move-result p0

    return p0
.end method

.method private final zzbme()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxt:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxu:I

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdnp;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxs:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdno;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdnr;->zzbmf()Lcom/google/android/gms/internal/zzdnr;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnp;->zzlxv:Lcom/google/android/gms/internal/zzdnt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdnr;->zza(Lcom/google/android/gms/internal/zzdnt;)V

    :cond_0
    return-void
.end method
