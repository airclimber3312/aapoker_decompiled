.class final Lcom/google/firebase/appindexing/internal/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzeuo:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic zzmoi:Lcom/google/firebase/appindexing/internal/zzk;

.field private synthetic zzmoj:Lcom/google/firebase/appindexing/internal/zzm;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzm;Lcom/google/firebase/appindexing/internal/zzk;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzmoj:Lcom/google/firebase/appindexing/internal/zzm;

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzmoi:Lcom/google/firebase/appindexing/internal/zzk;

    iput-object p3, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzeuo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzmoj:Lcom/google/firebase/appindexing/internal/zzm;

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzmoi:Lcom/google/firebase/appindexing/internal/zzk;

    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzp;->zzeuo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/firebase/appindexing/internal/zzm;->zza(Lcom/google/firebase/appindexing/internal/zzm;Lcom/google/firebase/appindexing/internal/zzk;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void
.end method
