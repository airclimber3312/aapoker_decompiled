.class final Lcom/google/android/gms/internal/zzdbe;
.super Lcom/google/android/gms/internal/zzdbd;


# static fields
.field private static final zzkti:Ljava/lang/Object;

.field private static zzkyf:Lcom/google/android/gms/internal/zzdbe;


# instance fields
.field private connected:Z

.field private zzktj:Landroid/content/Context;

.field private zzktm:I

.field private zzktn:Z

.field private zzkto:Z

.field private zzktp:Z

.field private zzktt:Z

.field private zzkxz:Lcom/google/android/gms/internal/zzdac;

.field private volatile zzkya:Lcom/google/android/gms/internal/zzczz;

.field private zzkyb:Z

.field private zzkyc:Lcom/google/android/gms/internal/zzdad;

.field private zzkyd:Lcom/google/android/gms/internal/zzdbh;

.field private zzkye:Lcom/google/android/gms/internal/zzdan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdbe;->zzkti:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdbd;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktm:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdbe;->zzkto:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->connected:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktp:Z

    new-instance v0, Lcom/google/android/gms/internal/zzdbf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdbf;-><init>(Lcom/google/android/gms/internal/zzdbe;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyc:Lcom/google/android/gms/internal/zzdad;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdbe;->zzktt:Z

    return-void
.end method

.method private final isPowerSaveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktt:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->connected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktm:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdbe;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktj:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdbe;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyb:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdbe;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdbe;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method static synthetic zzbib()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdbe;->zzkti:Ljava/lang/Object;

    return-object v0
.end method

.method public static zzbje()Lcom/google/android/gms/internal/zzdbe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdbe;->zzkyf:Lcom/google/android/gms/internal/zzdbe;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdbe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdbe;->zzkyf:Lcom/google/android/gms/internal/zzdbe;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzdbe;->zzkyf:Lcom/google/android/gms/internal/zzdbe;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdbe;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktm:I

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdbe;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzdbe;->connected:Z

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzdbe;)Lcom/google/android/gms/internal/zzdac;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkxz:Lcom/google/android/gms/internal/zzdac;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkto:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdbe;->zzktn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyb:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkya:Lcom/google/android/gms/internal/zzczz;

    new-instance v1, Lcom/google/android/gms/internal/zzdbg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdbg;-><init>(Lcom/google/android/gms/internal/zzdbe;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzczz;->zzm(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzczz;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktj:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbe;->zzktj:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdbe;->zzkya:Lcom/google/android/gms/internal/zzczz;

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdbe;->zzkya:Lcom/google/android/gms/internal/zzczz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbhy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdbe;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyd:Lcom/google/android/gms/internal/zzdbh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdbh;->zzbic()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzbjf()Lcom/google/android/gms/internal/zzdac;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkxz:Lcom/google/android/gms/internal/zzdac;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktj:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdao;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyc:Lcom/google/android/gms/internal/zzdad;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdbe;->zzktj:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdao;-><init>(Lcom/google/android/gms/internal/zzdad;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkxz:Lcom/google/android/gms/internal/zzdac;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyd:Lcom/google/android/gms/internal/zzdbh;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzdbi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzdbi;-><init>(Lcom/google/android/gms/internal/zzdbe;Lcom/google/android/gms/internal/zzdbf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyd:Lcom/google/android/gms/internal/zzdbh;

    iget v1, p0, Lcom/google/android/gms/internal/zzdbe;->zzktm:I

    if-lez v1, :cond_2

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzdbh;->zzs(J)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkto:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktn:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdbe;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktn:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkye:Lcom/google/android/gms/internal/zzdan;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktp:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzdan;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdan;-><init>(Lcom/google/android/gms/internal/zzdbd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkye:Lcom/google/android/gms/internal/zzdan;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbe;->zzktj:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzkxz:Lcom/google/android/gms/internal/zzdac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzca(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbe;->zzktt:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzdbe;->zzd(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzd(ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdbe;->isPowerSaveMode()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdbe;->zzktt:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzdbe;->connected:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdbe;->isPowerSaveMode()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdbe;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyd:Lcom/google/android/gms/internal/zzdbh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdbh;->cancel()V

    const-string p1, "PowerSaveMode initiated."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdbe;->zzkyd:Lcom/google/android/gms/internal/zzdbh;

    iget p2, p0, Lcom/google/android/gms/internal/zzdbe;->zzktm:I

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzdbh;->zzs(J)V

    const-string p1, "PowerSaveMode terminated."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
