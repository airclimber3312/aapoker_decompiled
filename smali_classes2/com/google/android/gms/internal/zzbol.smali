.class final Lcom/google/android/gms/internal/zzbol;
.super Lcom/google/android/gms/internal/zzboq;


# instance fields
.field private synthetic zzguw:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzgux:I

.field private synthetic zzguy:I

.field private synthetic zzguz:Lcom/google/android/gms/drive/zzo;

.field private synthetic zzgva:Lcom/google/android/gms/internal/zzbok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbok;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbol;->zzgva:Lcom/google/android/gms/internal/zzbok;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbol;->zzguw:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/internal/zzbol;->zzgux:I

    iput p5, p0, Lcom/google/android/gms/internal/zzbol;->zzguy:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbol;->zzguz:Lcom/google/android/gms/drive/zzo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzboq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbol;->zzguw:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbml;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbol;->zzgva:Lcom/google/android/gms/internal/zzbok;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbql;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbol;->zzguw:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/internal/zzbol;->zzgux:I

    iget v6, p0, Lcom/google/android/gms/internal/zzbol;->zzguy:I

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbol;->zzguz:Lcom/google/android/gms/drive/zzo;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbml;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v1, Lcom/google/android/gms/internal/zzbon;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbon;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbml;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
