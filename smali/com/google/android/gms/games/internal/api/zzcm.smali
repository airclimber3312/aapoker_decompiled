.class final Lcom/google/android/gms/games/internal/api/zzcm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;


# instance fields
.field private synthetic zzetp:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/zzcm;->zzetp:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSnapshotId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzcm;->zzetp:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
