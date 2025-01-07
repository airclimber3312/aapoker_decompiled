.class public Lcom/google/firebase/storage/FileDownloadTask;
.super Lcom/google/firebase/storage/StorageTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private mResultCode:I

.field private zzgsn:J

.field private volatile zzleq:Ljava/lang/Exception;

.field private zzotm:Lcom/google/firebase/storage/StorageReference;

.field private zzoto:Lcom/google/android/gms/internal/zzfbc;

.field private final zzotp:Landroid/net/Uri;

.field private zzotq:J

.field private zzotr:Ljava/lang/String;

.field private zzots:J


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzgsn:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotp:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/zzfbc;

    iget-object p2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzfbc;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    return-void
.end method

.method private final zza(Ljava/io/InputStream;[B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    :try_start_0
    array-length v3, p2

    if-eq v0, v3, :cond_0

    array-length v3, p2

    sub-int/2addr v3, v0

    invoke-virtual {p1, p2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v2, :cond_0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    :cond_0
    if-eqz v1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method private final zza(Lcom/google/android/gms/internal/zzfbn;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfbn;->getStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotp:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, "FileDownloadTask"

    if-nez v2, :cond_3

    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "The file downloading to has been deleted:"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expected a file to resume from."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "unable to create file:"

    if-eqz v6, :cond_2

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    const/4 v2, 0x1

    cmp-long v8, v6, v3

    if-lez v8, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Resuming download file "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_2
    const/high16 v1, 0x40000

    :try_start_0
    new-array v1, v1, [B

    :cond_5
    :goto_3
    if-eqz v2, :cond_7

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/storage/FileDownloadTask;->zza(Ljava/io/InputStream;[B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotq:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotq:J

    iget-object v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    if-eqz v4, :cond_6

    const-string v2, "Exception occurred during file download. Retrying."

    iget-object v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    invoke-static {v5, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    const/4 v2, 0x0

    :cond_6
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v0}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    move v0, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to open Firebase Storage stream."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    :goto_4
    return v0
.end method


# virtual methods
.method final getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method final getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzgsn:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbc;->cancel()V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzftu:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    return-void
.end method

.method final run()V
    .locals 13

    const-string v0, "FileDownloadTask"

    iget-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

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
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotq:J

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzfbc;->reset()V

    :try_start_0
    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v7}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/zzfbm;->zzi(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzfbm;

    move-result-object v7

    iget-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v8}, Lcom/google/firebase/storage/StorageReference;->zzcnx()Landroid/net/Uri;

    move-result-object v8

    iget-wide v9, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/internal/zzfbm;->zza(Landroid/net/Uri;J)Lcom/google/android/gms/internal/zzfbn;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {v8, v7, v3}, Lcom/google/android/gms/internal/zzfbc;->zza(Lcom/google/android/gms/internal/zzfbn;Z)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzfbn;->getResultCode()I

    move-result v8

    iput v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzfbn;->getException()Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzfbn;->getException()Ljava/lang/Exception;

    move-result-object v8

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    :goto_0
    iput-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    iget v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    const/16 v9, 0x134

    const/4 v10, 0x1

    if-eq v8, v9, :cond_4

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_3

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v8

    if-ne v8, v1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzfbn;->zzcot()I

    move-result v9

    int-to-long v11, v9

    iput-wide v11, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzgsn:J

    const-string v9, "ETag"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/zzfbn;->zzst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotr:Ljava/lang/String;

    if-eqz v11, :cond_6

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v1, "The file at the server has changed.  Restarting from the beginning."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    iput-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotr:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzfbn;->zzcon()V

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    return-void

    :cond_6
    iput-object v9, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotr:Ljava/lang/String;

    :try_start_1
    invoke-direct {p0, v7}, Lcom/google/firebase/storage/FileDownloadTask;->zza(Lcom/google/android/gms/internal/zzfbn;)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    const-string v9, "Exception occurred during file write.  Aborting."

    invoke-static {v0, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    :cond_7
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzfbn;->zzcon()V

    if-eqz v8, :cond_8

    iget-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v6

    if-ne v6, v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_9

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return-void

    :cond_9
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotp:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    goto :goto_6

    :cond_a
    iput-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    :goto_6
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_b

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_d

    const/16 v1, 0x100

    invoke-virtual {p0, v1, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    move-result v1

    if-nez v1, :cond_c

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

    :cond_c
    return-void

    :cond_d
    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotq:J

    cmp-long v8, v6, v4

    if-gtz v8, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return-void

    :catch_1
    move-exception v1

    const-string v4, "Unable to create firebase storage network request."

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return-void
.end method

.method protected schedule()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzbmh()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/storage/zzu;->zzv(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzcnt()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 6

    new-instance v0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    iget-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzleq:Ljava/lang/Exception;

    iget v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    invoke-static {v1, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzotq:J

    iget-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzots:J

    add-long/2addr v2, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/FileDownloadTask;Ljava/lang/Exception;J)V

    return-object v0
.end method
