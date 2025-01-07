.class public Lcom/google/firebase/storage/UploadTask;
.super Lcom/google/firebase/storage/StorageTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mResultCode:I

.field private final mUri:Landroid/net/Uri;

.field private volatile zzleq:Ljava/lang/Exception;

.field private final zzotm:Lcom/google/firebase/storage/StorageReference;

.field private zzoto:Lcom/google/android/gms/internal/zzfbc;

.field private volatile zzouu:Lcom/google/firebase/storage/StorageMetadata;

.field private final zzowv:J

.field private final zzoww:Lcom/google/android/gms/internal/zzfbb;

.field private final zzowx:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzowy:I

.field private zzowz:Z

.field private volatile zzoxa:Landroid/net/Uri;

.field private volatile zzoxb:Ljava/lang/Exception;

.field private volatile zzoxc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 9

    const-string v0, "UploadTask"

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzowx:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v1, 0x40000

    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->zzowy:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    iput-object p3, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    new-instance p2, Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v4

    invoke-direct {p2, v3, v4, v5}, Lcom/google/android/gms/internal/zzfbc;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    const-wide/16 v3, -0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string p2, "r"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    move-wide v5, v3

    :goto_0
    :try_start_3
    const-string p3, "could not retrieve file size for upload "

    iget-object v7, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, v7

    :goto_1
    invoke-static {v0, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception p2

    move-wide v5, v3

    :goto_2
    const-string p3, "NullPointerException during file size calculation."

    invoke-static {v0, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-wide v5, v3

    :goto_3
    iget-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v2, :cond_4

    cmp-long p1, v5, v3

    if-nez p1, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    if-ltz p1, :cond_2

    int-to-long v5, p1

    :catch_4
    :cond_2
    move-wide v3, v5

    :try_start_5
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v2, p1

    goto :goto_6

    :catch_5
    move-exception p1

    move-wide v3, v5

    goto :goto_4

    :catch_6
    move-exception p1

    :goto_4
    iget-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const-string v5, "could not locate file for uploading:"

    if-eqz p3, :cond_3

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    :goto_6
    move-wide v5, v3

    :cond_4
    iput-wide v5, p0, Lcom/google/firebase/storage/UploadTask;->zzowv:J

    new-instance p1, Lcom/google/android/gms/internal/zzfbb;

    invoke-direct {p1, v2, v1}, Lcom/google/android/gms/internal/zzfbb;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/storage/UploadTask;->zzowz:Z

    iput-object p4, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzowx:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v0, 0x40000

    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->zzowy:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/google/firebase/storage/UploadTask;->zzowv:J

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    new-instance p2, Lcom/google/android/gms/internal/zzfbb;

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/zzfbb;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    iput-boolean v2, p0, Lcom/google/firebase/storage/UploadTask;->zzowz:Z

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    new-instance p2, Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, p3, v0, v1}, Lcom/google/android/gms/internal/zzfbc;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V
    .locals 4

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzowx:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v0, 0x40000

    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->zzowy:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v2, p3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/firebase/storage/UploadTask;->zzowv:J

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    new-instance p2, Lcom/google/android/gms/internal/zzfbb;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/internal/zzfbb;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/firebase/storage/UploadTask;->zzowz:Z

    new-instance p2, Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, p3, v0, v1}, Lcom/google/android/gms/internal/zzfbc;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/storage/StorageReference;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzfbn;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfbh;->zzh(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zze(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->zzd(Lcom/google/android/gms/internal/zzfbn;)Z

    move-result p1

    return p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzfbn;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzfbc;->zza(Lcom/google/android/gms/internal/zzfbn;Z)V

    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->zzd(Lcom/google/android/gms/internal/zzfbn;)Z

    move-result p1

    return p1
.end method

.method private final zzcoi()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->zzcoj()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to obtain an upload URL."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    :cond_5
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return v2

    :cond_6
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return v2

    :cond_7
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    const/4 v3, 0x1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v4, 0x12c

    if-lt v0, v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_b

    invoke-direct {p0, v3}, Lcom/google/firebase/storage/UploadTask;->zzde(Z)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->zzcoj()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    :cond_a
    return v2

    :cond_b
    return v3
.end method

.method private final zzcoj()Z
    .locals 3

    const-string v0, "final"

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzoxc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The server has terminated the upload session"

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    :cond_0
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzfbn;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfbn;->getResultCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfbc;->zzjd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x2

    :cond_0
    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfbn;->getException()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    const-string v0, "X-Goog-Upload-Status"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfbn;->zzst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzoxc:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v0, 0x134

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private final zzde(Z)Z
    .locals 10

    const-string v0, "UploadTask"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->zzcnw()Lcom/google/android/gms/internal/zzfbm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->zzcnx()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzfbm;->zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/zzfbn;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->zzoxc:Ljava/lang/String;

    const-string v4, "final"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v2}, Lcom/google/firebase/storage/UploadTask;->zzc(Lcom/google/android/gms/internal/zzfbn;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_1
    invoke-direct {p0, v2}, Lcom/google/firebase/storage/UploadTask;->zzb(Lcom/google/android/gms/internal/zzfbn;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const-string p1, "X-Goog-Upload-Status"

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzfbn;->zzst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server has terminated the upload session"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    return v1

    :cond_3
    const-string p1, "X-Goog-Upload-Size-Received"

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzfbn;->zzst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    :goto_1
    iget-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzowx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_5

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected error. The server lost a chunk update."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-gez p1, :cond_7

    :try_start_1
    iget-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    sub-long v6, v2, v4

    long-to-int v8, v6

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/zzfbb;->zzja(I)I

    move-result p1

    int-to-long v8, p1

    cmp-long p1, v8, v6

    if-eqz p1, :cond_6

    new-instance p1, Ljava/io/IOException;

    const-string v2, "Unexpected end of stream encountered."

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    return v1

    :cond_6
    iget-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzowx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Somehow, the uploaded bytes changed during an uploaded.  This should nothappen"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "uploaded bytes changed unexpectedly."

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v2, "Unable to recover position in Stream during resumable upload"

    :goto_2
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    const-string v2, "Unable to recover status during resumable upload"

    goto :goto_2
.end method


# virtual methods
.method final getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method final getTotalByteCount()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/UploadTask;->zzowv:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbc;->cancel()V

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->zzcnw()Lcom/google/android/gms/internal/zzfbm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->zzcnx()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfbm;->zza(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/zzfbn;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UploadTask"

    const-string v2, "Unable to create chunk upload request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/firebase/storage/zzad;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/storage/zzad;-><init>(Lcom/google/firebase/storage/UploadTask;Lcom/google/android/gms/internal/zzfbn;)V

    invoke-static {v1}, Lcom/google/firebase/storage/zzu;->zzt(Ljava/lang/Runnable;)V

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzftu:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    invoke-super {p0}, Lcom/google/firebase/storage/StorageTask;->onCanceled()V

    return-void
.end method

.method protected resetState()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoxc:Ljava/lang/String;

    return-void
.end method

.method final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoto:Lcom/google/android/gms/internal/zzfbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbc;->reset()V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    move-result v2

    const-string v3, "UploadTask"

    if-nez v2, :cond_0

    const-string v0, "The upload cannot continue as it is not in a valid state."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getParent()Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot upload to getRoot. You should upload to a storage location such as .getReference(\'image.png\').putFile..."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    :cond_1
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v2, "application/octet-stream"

    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v5}, Lcom/google/firebase/storage/StorageReference;->zzcnw()Lcom/google/android/gms/internal/zzfbm;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v6}, Lcom/google/firebase/storage/StorageReference;->zzcnx()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    if-eqz v7, :cond_6

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageMetadata;->zzcnu()Lorg/json/JSONObject;

    move-result-object v4

    :cond_6
    invoke-virtual {v5, v6, v4, v2}, Lcom/google/android/gms/internal/zzfbm;->zza(Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzfbn;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v2}, Lcom/google/firebase/storage/UploadTask;->zzc(Lcom/google/android/gms/internal/zzfbn;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "X-Goog-Upload-URL"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzfbn;->zzst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const-string v4, "Unable to create a network request from metadata"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    goto :goto_2

    :cond_7
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->zzde(Z)Z

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->zzcoi()Z

    move-result v2

    :cond_9
    :goto_3
    if-eqz v2, :cond_e

    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    iget v4, p0, Lcom/google/firebase/storage/UploadTask;->zzowy:I

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzfbb;->zzjb(I)I

    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->zzowy:I

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfbb;->available()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageReference;->zzcnw()Lcom/google/android/gms/internal/zzfbm;

    move-result-object v5

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageReference;->zzcnx()Landroid/net/Uri;

    move-result-object v6

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfbb;->zzcom()[B

    move-result-object v8

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzowx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfbb;->isFinished()Z

    move-result v12

    move v11, v2

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/zzfbm;->zza(Landroid/net/Uri;Ljava/lang/String;[BJIZ)Lcom/google/android/gms/internal/zzfbn;

    move-result-object v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    invoke-direct {p0, v4}, Lcom/google/firebase/storage/UploadTask;->zzb(Lcom/google/android/gms/internal/zzfbn;)Z

    move-result v5

    if-nez v5, :cond_a

    const/high16 v2, 0x40000

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->zzowy:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Resetting chunk size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_a
    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->zzowx:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzfbb;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzfbb;->zzja(I)I

    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->zzowy:I

    const/high16 v4, 0x2000000

    if-ge v2, v4, :cond_d

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->zzowy:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Increasing chunk size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :cond_b
    :try_start_4
    new-instance v2, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfbn;->zzcov()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v2, v5, v6}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    const/16 v2, 0x80

    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    goto :goto_8

    :catch_2
    move-exception v2

    goto :goto_5

    :catch_3
    move-exception v2

    :goto_5
    const-string v5, "Unable to parse resulting metadata from upload:"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfbn;->zzcoq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    goto :goto_8

    :catch_4
    move-exception v2

    const-string v4, "Unable to create chunk upload request"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v2

    const-string v4, "Unable to read bytes for uploading"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    :cond_d
    :goto_8
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->zzcoi()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->zzk(IZ)Z

    goto/16 :goto_3

    :cond_e
    iget-boolean v0, p0, Lcom/google/firebase/storage/UploadTask;->zzowz:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_f

    :try_start_6
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoww:Lcom/google/android/gms/internal/zzfbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfbb;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "Unable to close stream."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    return-void
.end method

.method protected schedule()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzbmh()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/storage/zzu;->zzu(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzcnt()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 9

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzleq:Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzoxb:Ljava/lang/Exception;

    :goto_0
    new-instance v8, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v3

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->zzowx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->zzoxa:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/firebase/storage/UploadTask;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/UploadTask;Ljava/lang/Exception;JLandroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)V

    return-object v8
.end method
