.class final synthetic Lcom/google/android/gms/fitness/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzbo;


# static fields
.field static final zzgui:Lcom/google/android/gms/common/internal/zzbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/zzh;->zzgui:Lcom/google/android/gms/common/internal/zzbo;

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

    check-cast p1, Lcom/google/android/gms/fitness/result/GoalsResult;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/result/GoalsResult;->getGoals()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
