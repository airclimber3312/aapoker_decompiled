.class public final Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;,
        Lcom/google/android/gms/analytics/GoogleAnalytics$zza;
    }
.end annotation


# static fields
.field private static zzduj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzarf:Z

.field private zzduk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/analytics/GoogleAnalytics$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzdul:Z

.field private zzdum:Z

.field private volatile zzdun:Z

.field private zzduo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduj:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzark;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/zzark;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduk:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzark;->zzbl(Landroid/content/Context;)Lcom/google/android/gms/internal/zzark;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzark;->zzyn()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public static zzvw()V
    .locals 3

    const-class v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduj:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduj:Ljava/util/List;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final dispatchLocalHits()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/internal/zzark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzark;->zzyc()Lcom/google/android/gms/internal/zzaqz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqz;->zzxs()V

    return-void
.end method

.method public final enableAutoActivityReports(Landroid/app/Application;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdul:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdul:Z

    :cond_0
    return-void
.end method

.method public final getAppOptOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdun:Z

    return v0
.end method

.method public final getLogger()Lcom/google/android/gms/analytics/Logger;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzatc;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final initialize()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/internal/zzark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzark;->zzye()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzabm()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzabn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzabo()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzabm()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzarf:Z

    return-void
.end method

.method public final isDryRunEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdum:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzarf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final newTracker(I)Lcom/google/android/gms/analytics/Tracker;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/internal/zzark;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/internal/zzark;Ljava/lang/String;Lcom/google/android/gms/internal/zzatb;)V

    if-lez p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzatq;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/internal/zzark;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzatq;->zzav(I)Lcom/google/android/gms/internal/zzasi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzats;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/internal/zzats;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzari;->initialize()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/internal/zzark;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/internal/zzark;Ljava/lang/String;Lcom/google/android/gms/internal/zzatb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzari;->initialize()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final reportActivityStart(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdul:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzk(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final reportActivityStop(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdul:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzl(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final setAppOptOut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdun:Z

    iget-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdun:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/internal/zzark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzark;->zzyc()Lcom/google/android/gms/internal/zzaqz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqz;->zzxr()V

    :cond_0
    return-void
.end method

.method public final setDryRun(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzdum:Z

    return-void
.end method

.method public final setLocalDispatchPeriod(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/internal/zzark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzark;->zzyc()Lcom/google/android/gms/internal/zzaqz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaqz;->setLocalDispatchPeriod(I)V

    return-void
.end method

.method public final setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatc;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    iget-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduo:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzast;->zzebn:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzebn:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x70

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DEBUG"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduo:Z

    :cond_0
    return-void
.end method

.method final zza(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduk:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/internal/zzark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzark;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduk:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzk(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v1, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->zzm(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final zzl(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzduk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v1, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->zzn(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
