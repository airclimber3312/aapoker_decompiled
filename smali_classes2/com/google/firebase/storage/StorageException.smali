.class public Lcom/google/firebase/storage/StorageException;
.super Lcom/google/firebase/FirebaseException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageException$ErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_BUCKET_NOT_FOUND:I = -0x32d3

.field public static final ERROR_CANCELED:I = -0x32f0

.field public static final ERROR_INVALID_CHECKSUM:I = -0x32e7

.field public static final ERROR_NOT_AUTHENTICATED:I = -0x32dc

.field public static final ERROR_NOT_AUTHORIZED:I = -0x32dd

.field public static final ERROR_OBJECT_NOT_FOUND:I = -0x32d2

.field public static final ERROR_PROJECT_NOT_FOUND:I = -0x32d4

.field public static final ERROR_QUOTA_EXCEEDED:I = -0x32d5

.field public static final ERROR_RETRY_LIMIT_EXCEEDED:I = -0x32e6

.field public static final ERROR_UNKNOWN:I = -0x32c8

.field private static zzoub:Ljava/io/IOException;


# instance fields
.field private final mErrorCode:I

.field private final zzouc:I

.field private zzoud:Ljava/lang/String;

.field private zzoue:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The operation was canceled."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/storage/StorageException;->zzoub:Ljava/io/IOException;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/firebase/FirebaseException;-><init>()V

    const/16 v0, -0x32f0

    if-eq p1, v0, :cond_4

    const/16 v0, -0x32c8

    const-string v1, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    if-eq p1, v0, :cond_5

    const/16 v0, -0x32e7

    if-eq p1, v0, :cond_3

    const/16 v0, -0x32e6

    if-eq p1, v0, :cond_2

    const/16 v0, -0x32dd

    if-eq p1, v0, :cond_1

    const/16 v0, -0x32dc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "Object does not exist at location."

    goto :goto_0

    :pswitch_1
    const-string v1, "Bucket does not exist."

    goto :goto_0

    :pswitch_2
    const-string v1, "Project does not exist."

    goto :goto_0

    :pswitch_3
    const-string v1, "Quota for bucket exceeded, please view quota on www.firebase.google.com/storage."

    goto :goto_0

    :cond_0
    const-string v1, "User is not authenticated, please authenticate using Firebase Authentication and try again."

    goto :goto_0

    :cond_1
    const-string v1, "User does not have permission to access this object."

    goto :goto_0

    :cond_2
    const-string v1, "The operation retry limit has been exceeded."

    goto :goto_0

    :cond_3
    const-string v1, "Object has a checksum which does not match. Please retry the operation."

    goto :goto_0

    :cond_4
    const-string v1, "The operation was cancelled."

    :cond_5
    :goto_0
    iput-object v1, p0, Lcom/google/firebase/storage/StorageException;->zzoud:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageException;->zzoue:Ljava/lang/Throwable;

    iput p1, p0, Lcom/google/firebase/storage/StorageException;->mErrorCode:I

    iput p3, p0, Lcom/google/firebase/storage/StorageException;->zzouc:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x34

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "StorageException has occurred.\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n Code: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " HttpResult: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageException"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/firebase/storage/StorageException;->zzoue:Ljava/lang/Throwable;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/google/firebase/storage/StorageException;->zzoue:Ljava/lang/Throwable;

    invoke-static {p2, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x32d5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, -0x32f0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzftt:Lcom/google/android/gms/common/api/Status;

    if-ne p0, v1, :cond_1

    const/16 p0, -0x32e6

    goto :goto_0

    :cond_1
    const/16 p0, -0x32c8

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object p0

    return-object p0
.end method

.method public static fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;
    .locals 2

    instance-of v0, p0, Lcom/google/firebase/storage/StorageException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/storage/StorageException;

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance v0, Lcom/google/firebase/storage/StorageException;

    instance-of v1, p0, Lcom/google/firebase/storage/zza;

    if-eqz v1, :cond_4

    const/16 v1, -0x32f0

    goto :goto_2

    :cond_4
    const/4 v1, -0x2

    if-eq p1, v1, :cond_9

    const/16 v1, 0x191

    if-eq p1, v1, :cond_8

    const/16 v1, 0x199

    if-eq p1, v1, :cond_7

    const/16 v1, 0x193

    if-eq p1, v1, :cond_6

    const/16 v1, 0x194

    if-eq p1, v1, :cond_5

    const/16 v1, -0x32c8

    goto :goto_2

    :cond_5
    const/16 v1, -0x32d2

    goto :goto_2

    :cond_6
    const/16 v1, -0x32dd

    goto :goto_2

    :cond_7
    const/16 v1, -0x32e7

    goto :goto_2

    :cond_8
    const/16 v1, -0x32dc

    goto :goto_2

    :cond_9
    const/16 v1, -0x32e6

    :goto_2
    invoke-direct {v0, v1, p0, p1}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzoue:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->mErrorCode:I

    return v0
.end method

.method public getHttpResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->zzouc:I

    return v0
.end method

.method public getIsRecoverableException()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x32e6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzoud:Ljava/lang/String;

    return-object v0
.end method
