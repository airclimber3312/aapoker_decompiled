.class final Lcom/google/android/gms/internal/zzdnz;
.super Ljava/lang/Object;


# static fields
.field private static final zzlyb:Landroid/view/animation/Interpolator;

.field private static final zzlyc:Landroid/view/animation/Interpolator;

.field private static final zzlyd:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzdnz;->zzlyb:Landroid/view/animation/Interpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v3, v0, v2, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/zzdnz;->zzlyc:Landroid/view/animation/Interpolator;

    invoke-static {v3, v0, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdnz;->zzlyd:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic zzbml()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdnz;->zzlyb:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic zzbmm()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdnz;->zzlyc:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic zzbmn()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdnz;->zzlyd:Landroid/view/animation/Interpolator;

    return-object v0
.end method
