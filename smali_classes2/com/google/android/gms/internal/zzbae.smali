.class public final Lcom/google/android/gms/internal/zzbae;
.super Ljava/lang/Object;


# static fields
.field private static final zzeui:Lcom/google/android/gms/internal/zzbei;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbei;

    const-string v1, "CastDynamiteModule"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbei;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbae;->zzeui:Lcom/google/android/gms/internal/zzbei;

    return-void
.end method

.method public static zza(Landroid/app/Service;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/cast/framework/media/zzd;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbae;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbah;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbah;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/cast/framework/media/zzd;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzbae;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "newMediaNotificationServiceImpl"

    aput-object v0, p2, p3

    const-class p3, Lcom/google/android/gms/internal/zzbah;

    const-string p3, "zzbah"

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-string p3, "Unable to call %s on %s."

    invoke-virtual {p1, p0, p3, p2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzbaj;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/cast/framework/CastOptions;",
            "Lcom/google/android/gms/internal/zzbaj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)",
            "Lcom/google/android/gms/cast/framework/zzj;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbae;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbah;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbah;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzbaj;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzj;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzbae;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "newCastContextImpl"

    aput-object v0, p2, p3

    const-class p3, Lcom/google/android/gms/internal/zzbah;

    const-string p3, "zzbah"

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-string p3, "Unable to call %s on %s."

    invoke-virtual {p1, p0, p3, p2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzh;)Lcom/google/android/gms/cast/framework/zzl;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbae;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbah;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbah;->zza(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzh;)Lcom/google/android/gms/cast/framework/zzl;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzbae;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "newCastSessionImpl"

    aput-object v0, p2, p3

    const-class p3, Lcom/google/android/gms/internal/zzbah;

    const-string p3, "zzbah"

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-string p3, "Unable to call %s on %s."

    invoke-virtual {p1, p0, p3, p2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/app/Service;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzr;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbae;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbah;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbah;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzr;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzbae;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "newReconnectionServiceImpl"

    aput-object v1, p2, v0

    const-class v0, Lcom/google/android/gms/internal/zzbah;

    const-string v0, "zzbah"

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "Unable to call %s on %s."

    invoke-virtual {p1, p0, v0, p2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/zzab;)Lcom/google/android/gms/cast/framework/zzt;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbae;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbah;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbah;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/zzab;)Lcom/google/android/gms/cast/framework/zzt;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/zzbae;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "newSessionImpl"

    aput-object v0, p2, p3

    const-class p3, Lcom/google/android/gms/internal/zzbah;

    const-string p3, "zzbah"

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-string p3, "Unable to call %s on %s."

    invoke-virtual {p1, p0, p3, p2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Landroid/os/AsyncTask;Lcom/google/android/gms/internal/zzbbg;IIZJIII)Lcom/google/android/gms/internal/zzbbe;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/AsyncTask<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/gms/internal/zzbbg;",
            "IIZJIII)",
            "Lcom/google/android/gms/internal/zzbbe;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbae;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbah;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    const-wide/32 v7, 0x200000

    const/4 v9, 0x5

    const/16 v10, 0x14d

    const/16 v11, 0x2710

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v11}, Lcom/google/android/gms/internal/zzbah;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbbg;IIZJIII)Lcom/google/android/gms/internal/zzbbe;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzbae;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "newFetchBitmapTaskImpl"

    aput-object v4, v2, v3

    const-class v3, Lcom/google/android/gms/internal/zzbah;

    const-string v3, "zzbah"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Unable to call %s on %s."

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbah;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhdi:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v1, "com.google.android.gms.cast.framework.dynamite"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    const-string v0, "com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhk(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbah;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzbah;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbai;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
