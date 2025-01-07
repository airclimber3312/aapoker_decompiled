.class public final Lcom/google/android/gms/internal/zzdkx;
.super Lcom/google/android/gms/internal/zzdlc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzdlc<",
        "Lcom/google/android/gms/internal/zzdky;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzlgp:Lcom/google/android/gms/internal/zzdkv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdkv;)V
    .locals 1

    const-string v0, "BarcodeNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzdlc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdkx;->zzlgp:Lcom/google/android/gms/internal/zzdkv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zzc;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhk(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzdla;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/zzdla;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzdlb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzdlb;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzdkx;->zzlgp:Lcom/google/android/gms/internal/zzdkv;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/zzdla;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzdkv;)Lcom/google/android/gms/internal/zzdky;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzdld;)[Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdky;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzdky;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzdld;)[Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "BarcodeNativeHandle"

    const-string v0, "Error calling native barcode detector"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p1
.end method

.method public final zza(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/zzdld;)[Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdky;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzdky;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzdld;)[Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "BarcodeNativeHandle"

    const-string v0, "Error calling native barcode detector"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p1
.end method

.method protected final zzbll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdky;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdky;->zzblm()V

    :cond_0
    return-void
.end method
