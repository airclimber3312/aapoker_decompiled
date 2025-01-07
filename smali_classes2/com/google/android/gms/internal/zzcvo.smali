.class final Lcom/google/android/gms/internal/zzcvo;
.super Lcom/google/android/gms/internal/zzcvr;


# instance fields
.field private synthetic zzkff:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcvn;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcvo;->zzkff:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcvr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcvl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzcvs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcvs;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvo;->zzkff:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzcvl;->zza(Lcom/google/android/gms/internal/zzcvj;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method
