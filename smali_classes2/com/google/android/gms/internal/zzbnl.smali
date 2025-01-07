.class final Lcom/google/android/gms/internal/zzbnl;
.super Lcom/google/android/gms/internal/zzbma;


# instance fields
.field private final zzgbf:Lcom/google/android/gms/common/api/internal/zzn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/drive/DriveApi$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/drive/DriveApi$zza;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbma;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnl;->zzgbf:Lcom/google/android/gms/common/api/internal/zzn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/internal/zzbmv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnl;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzgbf:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v1, Lcom/google/android/gms/internal/zzbnm;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/google/android/gms/internal/zzbnm;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;Lcom/google/android/gms/internal/zzbmv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbrz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbrz;->zzgxd:Lcom/google/android/gms/internal/zzbre;

    invoke-direct {v0, p1}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;-><init>(Lcom/google/android/gms/drive/FileUploadPreferences;)V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->build()Lcom/google/android/gms/drive/TransferPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzgbf:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v1, Lcom/google/android/gms/internal/zzbnm;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/gms/internal/zzbnm;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;Lcom/google/android/gms/internal/zzbmv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbsq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnl;->zzgbf:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v1, Lcom/google/android/gms/internal/zzbnm;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbsq;->zzgxr:Lcom/google/android/gms/internal/zzbte;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/gms/internal/zzbnm;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;Lcom/google/android/gms/internal/zzbmv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method
