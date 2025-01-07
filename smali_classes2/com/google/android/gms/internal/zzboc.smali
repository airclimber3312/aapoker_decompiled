.class final Lcom/google/android/gms/internal/zzboc;
.super Lcom/google/android/gms/internal/zzbnp;


# instance fields
.field private synthetic zzguo:Lcom/google/android/gms/internal/zzboa;

.field private synthetic zzgup:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzguq:Lcom/google/android/gms/drive/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboa;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboc;->zzguo:Lcom/google/android/gms/internal/zzboa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzboc;->zzgup:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboc;->zzguq:Lcom/google/android/gms/drive/zzr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzgup:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v6, Lcom/google/android/gms/internal/zzbmb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzguo:Lcom/google/android/gms/internal/zzboa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboa;->zza(Lcom/google/android/gms/internal/zzboa;)Lcom/google/android/gms/drive/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzgup:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzguo:Lcom/google/android/gms/internal/zzboa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboa;->zza(Lcom/google/android/gms/internal/zzboa;)Lcom/google/android/gms/drive/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzguo:Lcom/google/android/gms/internal/zzboa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboa;->zza(Lcom/google/android/gms/internal/zzboa;)Lcom/google/android/gms/drive/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->zzapd()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzboc;->zzguq:Lcom/google/android/gms/drive/zzr;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbmb;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzr;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbto;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbto;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v6, v0}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbmb;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
