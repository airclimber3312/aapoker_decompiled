.class public final Lcom/google/android/gms/internal/zzace;
.super Lcom/google/android/gms/common/internal/zzd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzabh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzd<",
        "Lcom/google/android/gms/internal/zzacn;",
        ">;"
    }
.end annotation


# instance fields
.field private zzcrt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    move-object v1, p1

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzd;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/String;)V

    iput p5, p0, Lcom/google/android/gms/internal/zzace;->zzcrt:I

    return-void
.end method


# virtual methods
.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzacn;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzacn;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzacp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzacp;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final zzhm()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected final zzhn()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public final zzoa()Lcom/google/android/gms/internal/zzacn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzacn;

    return-object v0
.end method
