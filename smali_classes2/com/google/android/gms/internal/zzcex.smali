.class public final Lcom/google/android/gms/internal/zzcex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/Launcher;


# static fields
.field private static zzipu:Lcom/google/android/gms/internal/zzcex;


# instance fields
.field private final zzaiq:Landroid/content/Context;

.field private final zzipv:Lcom/google/android/gms/internal/zzcej;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcex;->zzaiq:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/zzcej;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzcej;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcex;->zzipv:Lcom/google/android/gms/internal/zzcej;

    return-void
.end method

.method public static declared-synchronized zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcex;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzcex;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/zzcex;->zzipu:Lcom/google/android/gms/internal/zzcex;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcex;->zzaiq:Landroid/content/Context;

    if-eq v1, p0, :cond_1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzcex;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcex;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/zzcex;->zzipu:Lcom/google/android/gms/internal/zzcex;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzcex;->zzipu:Lcom/google/android/gms/internal/zzcex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getInstantAppIntentData(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/instantapps/InstantAppIntentData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcex;->zzaiq:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzceu;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/instantapps/InstantAppIntentData;

    move-result-object p1

    return-object p1
.end method

.method public final getInstantAppLaunchData(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/instantapps/LaunchData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcex;->zzaiq:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/instantapps/InstantApps;->getInstantAppsClient(Landroid/content/Context;)Lcom/google/android/gms/instantapps/InstantAppsClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/instantapps/InstantAppsClient;->getInstantAppLaunchData(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final initializeIntentClient()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcex;->zzaiq:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzceu;->zzdu(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
