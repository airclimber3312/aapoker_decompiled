.class abstract Lcom/google/android/gms/internal/zzbqd;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "TT;>;"
    }
.end annotation


# instance fields
.field zzgtb:I

.field private final zzgvu:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final zzgvv:Lcom/google/android/gms/drive/DriveContents;

.field zzgvw:Lcom/google/android/gms/drive/zzo;

.field private zzgvx:Lcom/google/android/gms/drive/metadata/internal/zzk;

.field zzgvy:Lcom/google/android/gms/drive/MetadataChangeSet;

.field zzgvz:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvu:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvv:Lcom/google/android/gms/drive/DriveContents;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbok;->zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqd;->zzaqo()Lcom/google/android/gms/drive/zzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvw:Lcom/google/android/gms/drive/zzo;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzhh(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvx:Lcom/google/android/gms/drive/metadata/internal/zzk;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->isFolder()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "May not create folders using this method. Use DriveFolderManagerClient#createFolder() instead of mime type application/vnd.google-apps.folder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    instance-of p1, p2, Lcom/google/android/gms/internal/zzboa;

    if-eqz p1, :cond_4

    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveContents;->zzapn()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DriveContents are already closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only DriveContents obtained from the Drive API are accepted."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvw:Lcom/google/android/gms/drive/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(Lcom/google/android/gms/internal/zzbnq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvw:Lcom/google/android/gms/drive/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzo;->zzapt()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvu:Lcom/google/android/gms/drive/MetadataChangeSet;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvu:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbok;->zza(Lcom/google/android/gms/drive/MetadataChangeSet;Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvy:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvv:Lcom/google/android/gms/drive/DriveContents;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvx:Lcom/google/android/gms/drive/metadata/internal/zzk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbok;->zza(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/metadata/internal/zzk;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgvx:Lcom/google/android/gms/drive/metadata/internal/zzk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzarc()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/zzbqd;->zzgtb:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbqd;->zza(Lcom/google/android/gms/internal/zzbnq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzbnq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbnq;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method zzaqo()Lcom/google/android/gms/drive/zzo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzq;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzo;

    return-object v0
.end method
