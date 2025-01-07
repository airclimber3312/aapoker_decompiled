.class final Lcom/google/android/gms/internal/zzbqp;
.super Lcom/google/android/gms/internal/zzbqw;


# instance fields
.field private synthetic zzguw:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzgwm:Lcom/google/android/gms/internal/zzbql;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqp;->zzgwm:Lcom/google/android/gms/internal/zzbql;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqp;->zzguw:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbqw;-><init>(Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbqm;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqp;->zzguw:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v0, Lcom/google/android/gms/internal/zzbtv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqp;->zzgwm:Lcom/google/android/gms/internal/zzbql;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbql;->zzgpe:Lcom/google/android/gms/drive/DriveId;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqp;->zzguw:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbtv;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbtv;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
