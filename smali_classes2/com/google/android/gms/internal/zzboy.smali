.class abstract Lcom/google/android/gms/internal/zzboy;
.super Lcom/google/android/gms/internal/zzbno;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbno<",
        "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgvd:Lcom/google/android/gms/internal/zzbot;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbot;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboy;->zzgvd:Lcom/google/android/gms/internal/zzbot;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbno;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbox;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboy;->zzgvd:Lcom/google/android/gms/internal/zzbot;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/google/android/gms/internal/zzbox;-><init>(Lcom/google/android/gms/internal/zzbot;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzbou;)V

    return-object v0
.end method
