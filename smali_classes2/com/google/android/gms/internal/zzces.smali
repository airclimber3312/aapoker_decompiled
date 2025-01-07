.class final Lcom/google/android/gms/internal/zzces;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/zze;


# instance fields
.field private final zzefs:Lcom/google/android/gms/common/api/Status;

.field private final zzipp:Lcom/google/android/gms/instantapps/LaunchData;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzces;->zzefs:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzces;->zzipp:Lcom/google/android/gms/instantapps/LaunchData;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzefs:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zzaxa()Lcom/google/android/gms/instantapps/LaunchData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzces;->zzipp:Lcom/google/android/gms/instantapps/LaunchData;

    return-object v0
.end method
