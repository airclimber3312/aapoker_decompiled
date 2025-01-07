.class public Lcom/google/firebase/storage/StreamDownloadTask;
.super Lcom/google/firebase/storage/StorageTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;,
        Lcom/google/firebase/storage/StreamDownloadTask$zza;,
        Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mResultCode:I

.field private zzgsn:J

.field private volatile zzleq:Ljava/lang/Exception;

.field private zzltm:Ljava/io/InputStream;

.field private zzotm:Lcom/google/firebase/storage/StorageReference;

.field private zzoto:Lcom/google/android/gms/internal/zzfbc;

.field private zzotq:J

.field private zzotr:Ljava/lang/String;

.field private zzowa:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

.field private zzowb:J

.field private zzowc:Lcom/google/android/gms/internal/zzfbn;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzgsn:J

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    new-instance p1, Lcom/google/android/gms/internal/zzfbc;

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfbc;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/android/gms/internal/zzfbn;)Lcom/google/android/gms/internal/zzfbn;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StreamDownloadTask;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzcoe()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/android/gms/internal/zzfbn;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/firebase/storage/StreamDownloadTask;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzltm:Ljava/io/InputStream;

    return-object p0
.end method

.method private final zzcoe()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbc;->reset()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbn;->zzcon()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->zzcnw()Lcom/google/android/gms/internal/zzfbm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->zzcnx()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotq:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzfbm;->zza(Landroid/net/Uri;J)Lcom/google/android/gms/internal/zzfbn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzfbc;->zza(Lcom/google/android/gms/internal/zzfbn;Z)V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbn;->getResultCode()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbn;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbn;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    iget v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    const/16 v1, 0x134

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zzst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotr:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v0, 0x199

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The ETag on the server changed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotr:Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzgsn:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbn;->zzcot()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzgsn:J

    :cond_7
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbn;->getStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not open resulting stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "StreamDownloadTask"

    const-string v2, "Unable to create firebase storage network request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method


# virtual methods
.method final getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method final getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzgsn:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbc;->cancel()V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzftu:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    return-void
.end method

.method protected onProgress()V
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotq:J

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowb:J

    return-void
.end method

.method public pause()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this operation is not supported on StreamDownloadTask."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this operation is not supported on StreamDownloadTask."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final run()V
    .locals 7

    const-string v0, "StreamDownloadTask"

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    new-instance v4, Lcom/google/firebase/storage/StreamDownloadTask$zza;

    new-instance v5, Lcom/google/firebase/storage/zzw;

    invoke-direct {v5, p0}, Lcom/google/firebase/storage/zzw;-><init>(Lcom/google/firebase/storage/StreamDownloadTask;)V

    invoke-direct {v4, v5, p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;-><init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzltm:Ljava/io/InputStream;

    :try_start_0
    invoke-static {v4}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zza(Lcom/google/firebase/storage/StreamDownloadTask$zza;)Z

    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowa:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcoa()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    iget-object v6, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzltm:Ljava/io/InputStream;

    invoke-interface {v4, v5, v6}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;->doInBackground(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "Exception occurred calling doInBackground."

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v5, "Initial opening of Stream failed"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzltm:Ljava/io/InputStream;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfbn;->zzcon()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowc:Lcom/google/android/gms/internal/zzfbn;

    :cond_3
    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v4

    if-ne v4, v1, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {p0, v1, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_6

    const/16 v2, 0x100

    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to change download task to final state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method protected schedule()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzbmh()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/storage/zzu;->zzv(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zza(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowa:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowa:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    return-object p0
.end method

.method final synthetic zzcnt()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 4

    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzleq:Ljava/lang/Exception;

    iget v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    invoke-static {v1, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowb:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/StreamDownloadTask;Ljava/lang/Exception;J)V

    return-object v0
.end method

.method final zzcq(J)V
    .locals 4

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotq:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotq:J

    iget-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowb:J

    const-wide/32 v2, 0x40000

    add-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return-void

    :cond_0
    iget-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzotq:J

    iput-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzowb:J

    :cond_1
    return-void
.end method
