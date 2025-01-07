.class public final Lcom/google/android/gms/internal/zzecv;
.super Ljava/lang/Object;


# static fields
.field private static zzmvh:Lcom/google/android/gms/internal/zzecv;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zzbva()Lcom/google/android/gms/internal/zzecv;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzecv;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzecv;->zzmvh:Lcom/google/android/gms/internal/zzecv;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzecv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzecv;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/zzecv;->zzmvh:Lcom/google/android/gms/internal/zzecv;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzecv;->zzmvh:Lcom/google/android/gms/internal/zzecv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final zzbvb()Lcom/google/android/gms/internal/zzect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzecw;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecv;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhdk:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v2, "com.google.android.gms.crash"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.firebase.crash.internal.api.FirebaseCrashApiImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhk(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "com.google.firebase.crash.internal.IFirebaseCrashApi"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzect;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/zzect;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzecu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzecu;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecv;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzecw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzecw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzch(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecv;->mContext:Landroid/content/Context;

    return-void
.end method
