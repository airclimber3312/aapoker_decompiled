.class final synthetic Lcom/google/android/gms/games/internal/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# instance fields
.field private final zzhzn:Lcom/google/android/gms/common/api/PendingResult;

.field private final zzhzt:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzhzu:Lcom/google/android/gms/common/internal/zzbo;

.field private final zzhzv:Lcom/google/android/gms/games/internal/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzj;->zzhzn:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzj;->zzhzt:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzj;->zzhzu:Lcom/google/android/gms/common/internal/zzbo;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzj;->zzhzv:Lcom/google/android/gms/games/internal/zzo;

    return-void
.end method


# virtual methods
.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzj;->zzhzn:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzj;->zzhzt:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzj;->zzhzu:Lcom/google/android/gms/common/internal/zzbo;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzj;->zzhzv:Lcom/google/android/gms/games/internal/zzo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzo;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
