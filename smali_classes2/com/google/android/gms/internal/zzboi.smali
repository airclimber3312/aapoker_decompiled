.class final Lcom/google/android/gms/internal/zzboi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl<",
        "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzguu:J

.field private synthetic zzguv:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboh;JJ)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzboi;->zzguu:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzboi;->zzguv:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzajh()V
    .locals 0

    return-void
.end method

.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzboi;->zzguu:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzboi;->zzguv:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V

    return-void
.end method
