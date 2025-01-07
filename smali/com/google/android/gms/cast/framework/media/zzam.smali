.class final Lcom/google/android/gms/cast/framework/media/zzam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeyz:J

.field private synthetic zzffz:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzam;->zzffz:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/zzam;->zzeyz:J

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzam;->zzffz:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzfft:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/zzbej;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/cast/framework/media/zzam;->zzeyz:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbdo;->zzc(JI)V

    :cond_0
    return-void
.end method
