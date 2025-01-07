.class final Lcom/google/firebase/storage/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzotm:Lcom/google/firebase/storage/StorageReference;

.field private zzotn:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private zzoto:Lcom/google/android/gms/internal/zzfbc;

.field private zzoua:Lcom/google/firebase/storage/StorageMetadata;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/storage/zzc;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/zzc;->zzotn:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p1, Lcom/google/android/gms/internal/zzfbc;

    iget-object p2, p0, Lcom/google/firebase/storage/zzc;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/storage/zzc;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzfbc;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/zzc;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "GetMetadataTask"

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/zzc;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfbm;->zzi(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzfbm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/zzc;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->zzcnx()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzfbm;->zzw(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzfbn;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v2, p0, Lcom/google/firebase/storage/zzc;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzfbc;->zza(Lcom/google/android/gms/internal/zzfbn;Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfbn;->zzcos()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfbn;->zzcov()Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/zzc;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/zzc;->zzoua:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfbn;->zzcoq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Unable to parse resulting metadata. "

    if-eqz v3, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/firebase/storage/zzc;->zzotn:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v2}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/google/firebase/storage/zzc;->zzotn:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/firebase/storage/zzc;->zzoua:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzfbn;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_2
    move-exception v1

    const-string v2, "Unable to create firebase storage network request."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/firebase/storage/zzc;->zzotn:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    goto :goto_2
.end method
