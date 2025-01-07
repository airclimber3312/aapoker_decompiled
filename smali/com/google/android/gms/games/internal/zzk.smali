.class final synthetic Lcom/google/android/gms/games/internal/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# instance fields
.field private final zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzhzw:Lcom/google/android/gms/common/internal/zzbo;

.field private final zzhzx:Lcom/google/android/gms/common/api/PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzk;->zzhzw:Lcom/google/android/gms/common/internal/zzbo;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzk;->zzhzx:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzk;->zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzk;->zzhzw:Lcom/google/android/gms/common/internal/zzbo;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzk;->zzhzx:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzk;->zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
