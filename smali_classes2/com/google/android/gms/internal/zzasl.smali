.class public final Lcom/google/android/gms/internal/zzasl;
.super Ljava/lang/Object;


# instance fields
.field private final zzdtw:Lcom/google/android/gms/internal/zzark;

.field private volatile zzeba:Ljava/lang/Boolean;

.field private zzebb:Ljava/lang/String;

.field private zzebc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasl;->zzdtw:Lcom/google/android/gms/internal/zzark;

    return-void
.end method

.method public static zzaaa()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzeca:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static zzaab()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzecc:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static zzaac()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzecb:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static zzaad()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzecd:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static zzaaf()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzecr:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzzv()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzebm:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static zzzw()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzecj:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static zzzx()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzebu:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzzy()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzebx:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzzz()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzebz:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final zzaae()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzast;->zzecm:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasl;->zzebc:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasl;->zzebb:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzebb:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzasl;->zzebc:Ljava/util/Set;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzebc:Ljava/util/Set;

    return-object v0
.end method

.method public final zzzu()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzdtw:Lcom/google/android/gms/internal/zzark;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzark;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzu;->zzany()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "com.google.android.gms.analytics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzdtw:Lcom/google/android/gms/internal/zzark;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzark;->zzxy()Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarh;->zzee(Ljava/lang/String;)V

    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasl;->zzeba:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
