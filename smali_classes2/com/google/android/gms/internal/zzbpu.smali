.class final Lcom/google/android/gms/internal/zzbpu;
.super Lcom/google/android/gms/internal/zzbqd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbqd<",
        "Lcom/google/android/gms/drive/DriveFile;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgvr:Lcom/google/android/gms/drive/DriveFolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboz;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/DriveFolder;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpu;->zzgvr:Lcom/google/android/gms/drive/DriveFolder;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzbqd;-><init>(Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzbnq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbnq;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/drive/DriveFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/zzbml;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpu;->zzgvr:Lcom/google/android/gms/drive/DriveFolder;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpu;->zzgvy:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzbpu;->zzgvz:I

    iget v4, p0, Lcom/google/android/gms/internal/zzbpu;->zzgtb:I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpu;->zzgvw:Lcom/google/android/gms/drive/zzo;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbml;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v0, Lcom/google/android/gms/internal/zzbtz;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbtz;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, v6, v0}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbml;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
