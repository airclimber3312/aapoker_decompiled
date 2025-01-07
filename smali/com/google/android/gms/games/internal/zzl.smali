.class final synthetic Lcom/google/android/gms/games/internal/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# instance fields
.field private final zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzhzq:Lcom/google/android/gms/common/internal/zzbo;

.field private final zzhzx:Lcom/google/android/gms/common/api/PendingResult;

.field private final zzhzy:Lcom/google/android/gms/games/internal/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzl;->zzhzy:Lcom/google/android/gms/games/internal/zzp;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzl;->zzhzx:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzl;->zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzl;->zzhzq:Lcom/google/android/gms/common/internal/zzbo;

    return-void
.end method


# virtual methods
.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzl;->zzhzy:Lcom/google/android/gms/games/internal/zzp;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzl;->zzhzx:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzl;->zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzl;->zzhzq:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
