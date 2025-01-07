.class public final Lcom/google/android/gms/vision/face/internal/client/zza;
.super Lcom/google/android/gms/internal/zzdlc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzdlc<",
        "Lcom/google/android/gms/vision/face/internal/client/zze;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzlhi:Lcom/google/android/gms/vision/face/internal/client/zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/zzc;)V
    .locals 1

    const-string v0, "FaceNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzdlc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/vision/face/internal/client/zza;->zzlhi:Lcom/google/android/gms/vision/face/internal/client/zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)[Lcom/google/android/gms/vision/face/Landmark;
    .locals 7

    iget-object p0, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzlhl:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lcom/google/android/gms/vision/face/Landmark;

    goto :goto_1

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Lcom/google/android/gms/vision/face/Landmark;

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    new-instance v3, Lcom/google/android/gms/vision/face/Landmark;

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->x:F

    iget v6, v2, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget v2, v2, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->type:I

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/vision/face/Landmark;-><init>(Landroid/graphics/PointF;I)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_1
    return-object p0
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zzc;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.face.ChimeraNativeFaceDetectorCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhk(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/vision/face/internal/client/zzg;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/vision/face/internal/client/zzg;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zzh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/vision/face/internal/client/zzh;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/vision/face/internal/client/zza;->zzlhi:Lcom/google/android/gms/vision/face/internal/client/zzc;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/vision/face/internal/client/zzc;)Lcom/google/android/gms/vision/face/internal/client/zze;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/zzdld;)[Lcom/google/android/gms/vision/face/Face;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdlc;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/google/android/gms/vision/face/Face;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/face/internal/client/zze;

    move-object/from16 v3, p2

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/vision/face/internal/client/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzdld;)[Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, v0

    new-array v2, v2, [Lcom/google/android/gms/vision/face/Face;

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    new-instance v15, Lcom/google/android/gms/vision/face/Face;

    iget v5, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->id:I

    new-instance v6, Landroid/graphics/PointF;

    iget v4, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerX:F

    iget v7, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerY:F

    invoke-direct {v6, v4, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iget v7, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->width:F

    iget v8, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->height:F

    iget v9, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzlhj:F

    iget v10, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzlhk:F

    invoke-static {v3}, Lcom/google/android/gms/vision/face/internal/client/zza;->zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)[Lcom/google/android/gms/vision/face/Landmark;

    move-result-object v11

    iget v12, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzlhm:F

    iget v13, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzlhn:F

    iget v14, v3, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzlho:F

    move-object v4, v15

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/vision/face/Face;-><init>(ILandroid/graphics/PointF;FFFF[Lcom/google/android/gms/vision/face/Landmark;FFF)V

    aput-object v15, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "FaceNativeHandle"

    const-string v3, "Could not call native face detector"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v1, [Lcom/google/android/gms/vision/face/Face;

    return-object v0
.end method

.method protected final zzbll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/internal/client/zze;

    invoke-interface {v0}, Lcom/google/android/gms/vision/face/internal/client/zze;->zzblm()V

    return-void
.end method

.method public final zzfo(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/internal/client/zze;

    invoke-interface {v0, p1}, Lcom/google/android/gms/vision/face/internal/client/zze;->zzfo(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "FaceNativeHandle"

    const-string v2, "Could not call native face detector"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
