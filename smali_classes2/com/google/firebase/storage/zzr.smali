.class final Lcom/google/firebase/storage/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zzovm:Lcom/google/firebase/storage/zzp;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzr;->zzovm:Lcom/google/firebase/storage/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/zzr;->zzovm:Lcom/google/firebase/storage/zzp;

    iget-object v0, v0, Lcom/google/firebase/storage/zzp;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method
