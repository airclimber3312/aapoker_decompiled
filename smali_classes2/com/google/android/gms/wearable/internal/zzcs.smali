.class final synthetic Lcom/google/android/gms/wearable/internal/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzbo;


# static fields
.field static final zzgui:Lcom/google/android/gms/common/internal/zzbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcs;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzcs;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzcs;->zzgui:Lcom/google/android/gms/common/internal/zzbo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcu;

    check-cast p1, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/internal/zzcu;-><init>(Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;)V

    return-object v0
.end method
