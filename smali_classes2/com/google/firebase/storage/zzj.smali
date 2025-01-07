.class final Lcom/google/firebase/storage/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/storage/zzab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/storage/zzab<",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "-TTResult;>;TTResult;>;"
    }
.end annotation


# instance fields
.field private synthetic zzovk:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzj;->zzovk:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzi(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/tasks/OnSuccessListener;

    check-cast p2, Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-static {}, Lcom/google/firebase/storage/zzt;->zzcod()Lcom/google/firebase/storage/zzt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/zzj;->zzovk:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/zzt;->zzc(Lcom/google/firebase/storage/StorageTask;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
