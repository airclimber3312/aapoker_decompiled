.class public final Lcom/google/android/gms/internal/zzceu;
.super Ljava/lang/Object;


# static fields
.field private static zzipq:Ljava/lang/Boolean;

.field private static zzipr:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static declared-synchronized reset()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzceu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzceu;->zzipr:Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    sput-object v2, Lcom/google/android/gms/internal/zzceu;->zzipr:Landroid/content/ContentProviderClient;

    :cond_0
    sput-object v2, Lcom/google/android/gms/internal/zzceu;->zzipq:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzceu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzceu;->zzipr:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/zzcdz;->zzioz:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzceu;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/instantapps/InstantAppIntentData;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzceu;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;Z)Lcom/google/android/gms/instantapps/InstantAppIntentData;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;Z)Lcom/google/android/gms/instantapps/InstantAppIntentData;
    .locals 9

    const-string v0, "While calling %s %s:\n"

    const-string v1, "InstantAppsApi"

    const-string v2, "method_getInstantAppIntentData"

    :goto_0
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    const/16 v3, 0x579

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcec;->zzed(I)Lcom/google/android/gms/internal/zzdoj;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzceu;->zzdu(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zziod:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(I)V

    const-string v7, "key_fallbackIntent"

    invoke-virtual {v6, v7, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x2

    :try_start_0
    invoke-static {p0, v2, p1, v6}, Lcom/google/android/gms/internal/zzceu;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_2

    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zziod:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    :cond_2
    const-string p1, "key_instantAppIntentData"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zziod:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    :cond_3
    sget-object p1, Lcom/google/android/gms/instantapps/InstantAppIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgq;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/internal/zzbgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "key_eventListProtoBytes"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0x57a

    invoke-static {p3}, Lcom/google/android/gms/internal/zzcec;->zzed(I)Lcom/google/android/gms/internal/zzdoj;

    move-result-object p3

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/zzdoi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdoi;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzfls;[B)Lcom/google/android/gms/internal/zzfls;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdoi;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzflr; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "EventLogHelper"

    const-string v2, "Could not read event list proto"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    new-instance v4, Lcom/google/android/gms/internal/zzdoi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzdoi;-><init>()V

    new-array v0, v8, [Lcom/google/android/gms/internal/zzdoj;

    aput-object v3, v0, v7

    aput-object p3, v0, v5

    iput-object v0, v4, Lcom/google/android/gms/internal/zzdoi;->zzlyl:[Lcom/google/android/gms/internal/zzdoj;

    goto :goto_3

    :cond_5
    iget-object v0, v4, Lcom/google/android/gms/internal/zzdoi;->zzlyl:[Lcom/google/android/gms/internal/zzdoj;

    array-length v0, v0

    add-int/2addr v0, v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v4, Lcom/google/android/gms/internal/zzdoi;->zzlyl:[Lcom/google/android/gms/internal/zzdoj;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p3, v0, [Lcom/google/android/gms/internal/zzdoj;

    invoke-interface {v1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/google/android/gms/internal/zzdoj;

    iput-object p3, v4, Lcom/google/android/gms/internal/zzdoi;->zzlyl:[Lcom/google/android/gms/internal/zzdoj;

    :goto_3
    invoke-static {v4}, Lcom/google/android/gms/internal/zzdoi;->zzc(Lcom/google/android/gms/internal/zzfls;)[B

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_6
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_4
    new-array p1, v8, [Ljava/lang/Object;

    sget-object p2, Lcom/google/android/gms/internal/zzcdz;->zzioz:Landroid/net/Uri;

    aput-object p2, p1, v7

    aput-object v2, p1, v5

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zziod:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    :catch_3
    move-exception v3

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v6, Lcom/google/android/gms/internal/zzcdz;->zzioz:Landroid/net/Uri;

    aput-object v6, v4, v7

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/google/android/gms/internal/zzceu;->reset()V

    if-eqz p3, :cond_7

    const/4 p3, 0x0

    goto/16 :goto_0

    :cond_7
    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zziod:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzceu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzceu;->zzipr:Landroid/content/ContentProviderClient;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zzdt(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzceu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzceu;->zzipr:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/zzcdz;->zzioz:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzceu;->zzipr:Landroid/content/ContentProviderClient;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zzceu;->zzipr:Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized zzdu(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzceu;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzceu;->zzipq:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/zzceu;->zzdv(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzceu;->zzipq:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zzdv(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/zzceu;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzcfh;->zzdy(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/zzcdz;->zzioz:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    :try_start_2
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string p0, "InstantAppsApi"

    const-string v3, "Incorrect package name for instant apps content provider: "

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v2

    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/internal/zzceu;->zzdt(Landroid/content/Context;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
