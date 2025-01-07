.class public final Lcom/google/android/gms/awareness/Awareness;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FenceApi:Lcom/google/android/gms/awareness/FenceApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzegu:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzblg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzegv:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzblg;",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/Awareness;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzbjv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjv;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/Awareness;->FenceApi:Lcom/google/android/gms/awareness/FenceApi;

    new-instance v0, Lcom/google/android/gms/internal/zzaze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaze;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/Awareness;->SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

    new-instance v0, Lcom/google/android/gms/awareness/zza;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/Awareness;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v1, Lcom/google/android/gms/common/api/Api;

    const-string v2, "ContextManager.API"

    sget-object v3, Lcom/google/android/gms/awareness/Awareness;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v1, Lcom/google/android/gms/awareness/Awareness;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFenceClient(Landroid/app/Activity;)Lcom/google/android/gms/awareness/FenceClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/awareness/FenceClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/awareness/FenceClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/awareness/AwarenessOptions;)V

    return-object v0
.end method

.method public static getFenceClient(Landroid/content/Context;)Lcom/google/android/gms/awareness/FenceClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/awareness/FenceClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/awareness/FenceClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/awareness/AwarenessOptions;)V

    return-object v0
.end method

.method public static getSnapshotClient(Landroid/app/Activity;)Lcom/google/android/gms/awareness/SnapshotClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/awareness/SnapshotClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/awareness/SnapshotClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/awareness/AwarenessOptions;)V

    return-object v0
.end method

.method public static getSnapshotClient(Landroid/content/Context;)Lcom/google/android/gms/awareness/SnapshotClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/awareness/SnapshotClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/awareness/SnapshotClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/awareness/AwarenessOptions;)V

    return-object v0
.end method
