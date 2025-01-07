.class final Lcom/google/firebase/crash/zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmux:Lcom/google/firebase/crash/zzc;

.field private synthetic zzmuy:Ljava/util/concurrent/Future;

.field private synthetic zzmuz:J

.field private synthetic zzmva:Lcom/google/firebase/crash/zzg;


# direct methods
.method constructor <init>(Lcom/google/firebase/crash/zzc;Ljava/util/concurrent/Future;JLcom/google/firebase/crash/zzg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crash/zze;->zzmux:Lcom/google/firebase/crash/zzc;

    iput-object p2, p0, Lcom/google/firebase/crash/zze;->zzmuy:Ljava/util/concurrent/Future;

    const-wide/16 p1, 0x2710

    iput-wide p1, p0, Lcom/google/firebase/crash/zze;->zzmuz:J

    iput-object p5, p0, Lcom/google/firebase/crash/zze;->zzmva:Lcom/google/firebase/crash/zzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "FirebaseCrash"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/crash/zze;->zzmuy:Ljava/util/concurrent/Future;

    iget-wide v3, p0, Lcom/google/firebase/crash/zze;->zzmuz:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzect;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_0
    const-string v3, "Failed to initialize crash reporting"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/google/firebase/crash/zze;->zzmuy:Ljava/util/concurrent/Future;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/crash/zze;->zzmva:Lcom/google/firebase/crash/zzg;

    invoke-interface {v0}, Lcom/google/firebase/crash/zzg;->zzbuy()V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/firebase/crash/zze;->zzmux:Lcom/google/firebase/crash/zzc;

    invoke-static {v3}, Lcom/google/firebase/crash/zzc;->zza(Lcom/google/firebase/crash/zzc;)Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzecr;

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/zzecr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/crash/zze;->zzmux:Lcom/google/firebase/crash/zzc;

    invoke-static {v3}, Lcom/google/firebase/crash/zzc;->zzb(Lcom/google/firebase/crash/zzc;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/zzect;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzecr;)V

    iget-object v3, p0, Lcom/google/firebase/crash/zze;->zzmux:Lcom/google/firebase/crash/zzc;

    invoke-static {v3}, Lcom/google/firebase/crash/zzc;->zzc(Lcom/google/firebase/crash/zzc;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/crash/zze;->zzmux:Lcom/google/firebase/crash/zzc;

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/crash/zzc;->zza(Lcom/google/firebase/crash/zzc;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcom/google/firebase/crash/zze;->zzmux:Lcom/google/firebase/crash/zzc;

    invoke-static {v3}, Lcom/google/firebase/crash/zzc;->zzc(Lcom/google/firebase/crash/zzc;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzect;->zzpl(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzect;->zzas(Ljava/util/List;)V

    iget-object v3, p0, Lcom/google/firebase/crash/zze;->zzmux:Lcom/google/firebase/crash/zzc;

    invoke-static {v3}, Lcom/google/firebase/crash/zzc;->zzb(Lcom/google/firebase/crash/zzc;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzk;->zza(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzk;->zzaij()Lcom/google/android/gms/common/api/internal/zzk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zzk;->zzaik()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzect;->zzcp(Z)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzk;->zzaij()Lcom/google/android/gms/common/api/internal/zzk;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/crash/zzf;

    invoke-direct {v3, p0}, Lcom/google/firebase/crash/zzf;-><init>(Lcom/google/firebase/crash/zze;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zzk;->zza(Lcom/google/android/gms/common/api/internal/zzl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {}, Lcom/google/android/gms/internal/zzecv;->zzbva()Lcom/google/android/gms/internal/zzecv;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FirebaseCrash reporting initialized "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/crash/zze;->zzmva:Lcom/google/firebase/crash/zzg;

    invoke-interface {v0, v2}, Lcom/google/firebase/crash/zzg;->zzc(Lcom/google/android/gms/internal/zzect;)V

    return-void

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Failed to initialize crash reporting: "

    if-eqz v3, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/crash/zze;->zzmux:Lcom/google/firebase/crash/zzc;

    invoke-static {v0}, Lcom/google/firebase/crash/zzc;->zzb(Lcom/google/firebase/crash/zzc;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/firebase/crash/zze;->zzmva:Lcom/google/firebase/crash/zzg;

    invoke-interface {v0}, Lcom/google/firebase/crash/zzg;->zzbuy()V

    return-void
.end method
