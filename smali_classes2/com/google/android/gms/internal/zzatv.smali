.class public final Lcom/google/android/gms/internal/zzatv;
.super Ljava/lang/Object;


# static fields
.field private static zzefb:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzaux;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzefc:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzaux;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzefd:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static zzefe:Lcom/google/android/gms/internal/zzaur;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzatv;->zzefb:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzatw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzatw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzatv;->zzefc:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v1, Lcom/google/android/gms/common/api/Api;

    const-string v2, "AppDataSearch.LIGHTWEIGHT_API"

    sget-object v3, Lcom/google/android/gms/internal/zzatv;->zzefb:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v1, Lcom/google/android/gms/internal/zzatv;->zzefd:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzauz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzatv;->zzefe:Lcom/google/android/gms/internal/zzaur;

    return-void
.end method
