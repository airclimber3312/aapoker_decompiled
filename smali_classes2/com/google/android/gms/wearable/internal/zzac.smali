.class final synthetic Lcom/google/android/gms/wearable/internal/zzac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzbo;


# static fields
.field static final zzgui:Lcom/google/android/gms/common/internal/zzbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzac;->zzgui:Lcom/google/android/gms/common/internal/zzbo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/CapabilityApi$GetAllCapabilitiesResult;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/CapabilityApi$GetAllCapabilitiesResult;->getAllCapabilities()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
