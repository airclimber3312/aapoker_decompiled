.class public final Lcom/google/android/gms/internal/zzasq;
.super Lcom/google/android/gms/internal/zzari;


# instance fields
.field private zzebh:Z

.field private zzebi:Z

.field private final zzebj:Landroid/app/AlarmManager;

.field private zzebk:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzark;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzari;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasq;->zzebj:Landroid/app/AlarmManager;

    return-void
.end method

.method private final getJobId()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebk:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "analytics"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebk:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebk:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final zzaak()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.analytics.AnalyticsReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebj:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasq;->zzaak()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasq;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cancelling job. JobID"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzarh;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasq;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method

.method public final schedule()V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebh:Z

    const-string v1, "Receiver not registered"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzasl;->zzzy()J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasq;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, v6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebi:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-string v1, "Scheduling upload with JobScheduler"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.analytics.AnalyticsJobService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasq;->getJobId()I

    move-result v4

    invoke-direct {v3, v4, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    shl-long v0, v6, v0

    invoke-virtual {v3, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "action"

    const-string v4, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasq;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Scheduling job. JobID"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/zzarh;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :cond_0
    const-string v0, "Scheduling upload with AlarmManager"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasq;->zzebj:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasq;->zzaak()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public final zzaaj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebh:Z

    return v0
.end method

.method public final zzea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebi:Z

    return v0
.end method

.method protected final zzwk()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasq;->cancel()V

    invoke-static {}, Lcom/google/android/gms/internal/zzasl;->zzzy()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.analytics.AnalyticsReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Receiver registered for local dispatch."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzasq;->zzebh:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
