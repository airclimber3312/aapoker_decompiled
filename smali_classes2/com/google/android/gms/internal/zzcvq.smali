.class final Lcom/google/android/gms/internal/zzcvq;
.super Lcom/google/android/gms/internal/zzcvk;


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic zzkff:Landroid/net/Uri;

.field private synthetic zzkfg:Lcom/google/android/gms/internal/zzcvj;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/zzcvj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcvq;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcvq;->zzkff:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcvq;->zzkfg:Lcom/google/android/gms/internal/zzcvj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcvk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvq;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcvq;->zzkff:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcvn;->zzc(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvq;->zzkfg:Lcom/google/android/gms/internal/zzcvj;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcvj;->zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
