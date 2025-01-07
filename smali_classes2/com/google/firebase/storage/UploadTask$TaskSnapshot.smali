.class public Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
.super Lcom/google/firebase/storage/StorageTask$SnapshotBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskSnapshot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">.SnapshotBase;"
    }
.end annotation


# instance fields
.field private final zzouu:Lcom/google/firebase/storage/StorageMetadata;

.field private final zzoxa:Landroid/net/Uri;

.field private synthetic zzoxe:Lcom/google/firebase/storage/UploadTask;

.field private final zzoxf:J


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/UploadTask;Ljava/lang/Exception;JLandroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->zzoxe:Lcom/google/firebase/storage/UploadTask;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask$SnapshotBase;-><init>(Lcom/google/firebase/storage/StorageTask;Ljava/lang/Exception;)V

    iput-wide p3, p0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->zzoxf:J

    iput-object p5, p0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->zzoxa:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->zzoxf:J

    return-wide v0
.end method

.method public getDownloadUrl()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getMetadata()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata;->getDownloadUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadata()Lcom/google/firebase/storage/StorageMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->zzouu:Lcom/google/firebase/storage/StorageMetadata;

    return-object v0
.end method

.method public getTotalByteCount()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->zzoxe:Lcom/google/firebase/storage/UploadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->getTotalByteCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUploadSessionUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->zzoxa:Landroid/net/Uri;

    return-object v0
.end method
