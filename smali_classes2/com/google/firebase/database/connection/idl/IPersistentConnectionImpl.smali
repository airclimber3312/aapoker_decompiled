.class public Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;
.super Lcom/google/firebase/database/connection/idl/zzu;


# instance fields
.field private zzncx:Lcom/google/android/gms/internal/zzeew;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzu;-><init>()V

    return-void
.end method

.method public static loadDynamic(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/zzeeq;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzeex;)Lcom/google/firebase/database/connection/idl/zzt;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhdm:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v1, "com.google.android.gms.firebase_database"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    const-string v0, "com.google.firebase.database.connection.idl.IPersistentConnectionImpl"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhk(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/database/connection/idl/zzu;->asInterface(Landroid/os/IBinder;)Lcom/google/firebase/database/connection/idl/zzt;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzad;

    invoke-direct {v0, p2}, Lcom/google/firebase/database/connection/idl/zzad;-><init>(Lcom/google/android/gms/internal/zzeeq;)V

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    new-instance p3, Lcom/google/firebase/database/connection/idl/zzab;

    invoke-direct {p3, p4}, Lcom/google/firebase/database/connection/idl/zzab;-><init>(Lcom/google/android/gms/internal/zzeex;)V

    invoke-interface {p0, p1, v0, p2, p3}, Lcom/google/firebase/database/connection/idl/zzt;->setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzw;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Long;)J
    .locals 5

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag parameter clashed with NO_TAG value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-wide v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzefo;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzaa;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/zzaa;-><init>(Lcom/google/firebase/database/connection/idl/zzah;)V

    return-object v0
.end method

.method static synthetic zzb(Ljava/lang/Long;)J
    .locals 2

    invoke-static {p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static zzbr(J)Ljava/lang/Long;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzbs(J)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzbr(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzefo;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeew;->initialize()V

    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzeew;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzeew;->isInterrupted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public listen(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzq;JLcom/google/firebase/database/connection/idl/zzah;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzq;",
            "J",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzbr(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/google/firebase/database/connection/idl/zzz;

    invoke-direct {v3, p0, p3}, Lcom/google/firebase/database/connection/idl/zzz;-><init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;Lcom/google/firebase/database/connection/idl/zzq;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-static {p6}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzefo;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeev;Ljava/lang/Long;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public merge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzefo;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzefo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public onDisconnectMerge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzefo;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeew;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public onDisconnectPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzefo;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeew;->zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeew;->purgeOutstandingWrites()V

    return-void
.end method

.method public put(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzefo;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public refreshAuthToken()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeew;->refreshAuthToken()V

    return-void
.end method

.method public refreshAuthToken2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzeew;->zzpt(Ljava/lang/String;)V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzeew;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzw;)V
    .locals 9

    iget-object v0, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzncp:Lcom/google/firebase/database/connection/idl/zzi;

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zzi;->zza(Lcom/google/firebase/database/connection/idl/zzi;)Lcom/google/android/gms/internal/zzeeu;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lcom/google/firebase/database/connection/idl/zzac;

    invoke-direct {p3, p4}, Lcom/google/firebase/database/connection/idl/zzac;-><init>(Lcom/google/firebase/database/connection/idl/zzw;)V

    new-instance v2, Lcom/google/android/gms/internal/zzemj;

    iget p4, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzncq:I

    if-eqz p4, :cond_4

    const/4 v1, 0x1

    if-eq p4, v1, :cond_3

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2

    const/4 v1, 0x3

    if-eq p4, v1, :cond_1

    const/4 v1, 0x4

    if-eq p4, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/google/android/gms/internal/zzemo;->zznnt:Lcom/google/android/gms/internal/zzemo;

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/google/android/gms/internal/zzemo;->zznns:Lcom/google/android/gms/internal/zzemo;

    goto :goto_1

    :cond_2
    sget-object p4, Lcom/google/android/gms/internal/zzemo;->zznnr:Lcom/google/android/gms/internal/zzemo;

    goto :goto_1

    :cond_3
    sget-object p4, Lcom/google/android/gms/internal/zzemo;->zznnq:Lcom/google/android/gms/internal/zzemo;

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p4, Lcom/google/android/gms/internal/zzemo;->zznnu:Lcom/google/android/gms/internal/zzemo;

    :goto_1
    iget-object v1, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzncr:Ljava/util/List;

    invoke-direct {v2, p4, v1}, Lcom/google/android/gms/internal/zzemj;-><init>(Lcom/google/android/gms/internal/zzemo;Ljava/util/List;)V

    new-instance v3, Lcom/google/firebase/database/connection/idl/zzaf;

    invoke-direct {v3, p2}, Lcom/google/firebase/database/connection/idl/zzaf;-><init>(Lcom/google/firebase/database/connection/idl/zzk;)V

    new-instance p2, Lcom/google/android/gms/internal/zzees;

    iget-boolean v5, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmzx:Z

    iget-object v6, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzncs:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmzz:Ljava/lang/String;

    iget-object v8, p1, Lcom/google/firebase/database/connection/idl/zzc;->zznaa:Ljava/lang/String;

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzees;-><init>(Lcom/google/android/gms/internal/zzemn;Lcom/google/android/gms/internal/zzeeq;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzeey;

    invoke-direct {p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzeey;-><init>(Lcom/google/android/gms/internal/zzees;Lcom/google/android/gms/internal/zzeeu;Lcom/google/android/gms/internal/zzeex;)V

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeew;->shutdown()V

    return-void
.end method

.method public unlisten(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
