.class final Lcom/google/firebase/storage/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/storage/zzab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/storage/zzab<",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;TTResult;>;"
    }
.end annotation


# instance fields
.field private synthetic zzovk:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzl;->zzovk:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzi(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-static {}, Lcom/google/firebase/storage/zzt;->zzcod()Lcom/google/firebase/storage/zzt;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/storage/zzl;->zzovk:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {p2, v0}, Lcom/google/firebase/storage/zzt;->zzc(Lcom/google/firebase/storage/StorageTask;)V

    iget-object p2, p0, Lcom/google/firebase/storage/zzl;->zzovk:Lcom/google/firebase/storage/StorageTask;

    invoke-interface {p1, p2}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
