.class final Lcom/google/firebase/storage/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic zzovk:Lcom/google/firebase/storage/StorageTask;

.field private synthetic zzovl:Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzp;->zzovk:Lcom/google/firebase/storage/StorageTask;

    iput-object p2, p0, Lcom/google/firebase/storage/zzp;->zzovl:Lcom/google/android/gms/tasks/Continuation;

    iput-object p3, p0, Lcom/google/firebase/storage/zzp;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/storage/zzp;->zzovl:Lcom/google/android/gms/tasks/Continuation;

    iget-object v0, p0, Lcom/google/firebase/storage/zzp;->zzovk:Lcom/google/firebase/storage/StorageTask;

    invoke-interface {p1, v0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/firebase/storage/zzp;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/storage/zzp;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/storage/zzq;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/zzq;-><init>(Lcom/google/firebase/storage/zzp;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lcom/google/firebase/storage/zzr;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/zzr;-><init>(Lcom/google/firebase/storage/zzp;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/storage/zzp;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/storage/zzp;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/storage/zzp;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method
