.class final Lcom/google/android/gms/wearable/internal/zzcw;
.super Lcom/google/android/gms/common/api/internal/zzdo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzdo<",
        "Lcom/google/android/gms/wearable/internal/zzhg;",
        "Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzlue:Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;Lcom/google/android/gms/common/api/internal/zzck;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;",
            "Lcom/google/android/gms/common/api/internal/zzck<",
            "Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzdo;-><init>(Lcom/google/android/gms/common/api/internal/zzck;)V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcw;->zzlue:Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;Lcom/google/android/gms/common/api/internal/zzck;Lcom/google/android/gms/wearable/internal/zzct;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzcw;-><init>(Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;Lcom/google/android/gms/common/api/internal/zzck;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzc(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzhg;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgg;

    invoke-direct {v0, p2}, Lcom/google/android/gms/wearable/internal/zzgg;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/wearable/internal/zzcw;->zzlue:Lcom/google/android/gms/wearable/DataClient$OnDataChangedListener;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/wearable/internal/zzhg;->zza(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/wearable/DataApi$DataListener;)V

    return-void
.end method
