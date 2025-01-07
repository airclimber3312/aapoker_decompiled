.class final synthetic Lcom/google/android/gms/games/internal/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# instance fields
.field private final zzhzn:Lcom/google/android/gms/common/api/PendingResult;

.field private final zzhzo:Lcom/google/android/gms/games/internal/zzp;

.field private final zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzhzq:Lcom/google/android/gms/common/internal/zzbo;

.field private final zzhzr:Lcom/google/android/gms/common/internal/zzbo;

.field private final zzhzs:Lcom/google/android/gms/games/internal/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzn:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzo:Lcom/google/android/gms/games/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzq:Lcom/google/android/gms/common/internal/zzbo;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzr:Lcom/google/android/gms/common/internal/zzbo;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzs:Lcom/google/android/gms/games/internal/zzn;

    return-void
.end method


# virtual methods
.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzn:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzo:Lcom/google/android/gms/games/internal/zzp;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzq:Lcom/google/android/gms/common/internal/zzbo;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzr:Lcom/google/android/gms/common/internal/zzbo;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/zzh;->zzhzs:Lcom/google/android/gms/games/internal/zzn;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzn;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
