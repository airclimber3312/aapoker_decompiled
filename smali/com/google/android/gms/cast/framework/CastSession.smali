.class public Lcom/google/android/gms/cast/framework/CastSession;
.super Lcom/google/android/gms/cast/framework/Session;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/CastSession$zzb;,
        Lcom/google/android/gms/cast/framework/CastSession$zza;,
        Lcom/google/android/gms/cast/framework/CastSession$zzc;,
        Lcom/google/android/gms/cast/framework/CastSession$zzd;
    }
.end annotation


# static fields
.field private static final zzeui:Lcom/google/android/gms/internal/zzbei;


# instance fields
.field private final zzbky:Landroid/content/Context;

.field private final zzezz:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzfak:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/cast/Cast$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfal:Lcom/google/android/gms/cast/framework/zzl;

.field private final zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

.field private final zzfan:Lcom/google/android/gms/internal/zzbag;

.field private final zzfao:Lcom/google/android/gms/internal/zzbbi;

.field private zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private zzfaq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private zzfar:Lcom/google/android/gms/cast/CastDevice;

.field private zzfas:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbei;

    const-string v1, "CastSession"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbei;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastSession;->zzeui:Lcom/google/android/gms/internal/zzbei;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/Cast$CastApi;Lcom/google/android/gms/internal/zzbag;Lcom/google/android/gms/internal/zzbbi;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfak:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzbky:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzezz:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p5, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    iput-object p6, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfan:Lcom/google/android/gms/internal/zzbag;

    iput-object p7, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfao:Lcom/google/android/gms/internal/zzbbi;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/Session;->zzaej()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/cast/framework/CastSession$zzb;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lcom/google/android/gms/cast/framework/CastSession$zzb;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzc;)V

    invoke-static {p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzbae;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzh;)Lcom/google/android/gms/cast/framework/zzl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfal:Lcom/google/android/gms/cast/framework/zzl;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfas:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfaq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfaq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzbe(I)V

    return-void
.end method

.method static synthetic zzaee()Lcom/google/android/gms/internal/zzbei;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/framework/CastSession;->zzeui:Lcom/google/android/gms/internal/zzbei;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/zzl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfal:Lcom/google/android/gms/cast/framework/zzl;

    return-object p0
.end method

.method private final zzbe(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfao:Lcom/google/android/gms/internal/zzbbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbbi;->zzbh(I)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfar:Lcom/google/android/gms/cast/CastDevice;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfaq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfaq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfas:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfak:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/Cast$CastApi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/internal/zzbbi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfao:Lcom/google/android/gms/internal/zzbbi;

    return-object p0
.end method

.method private final zzg(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfar:Lcom/google/android/gms/cast/CastDevice;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/Session;->isResuming()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifyFailedToResumeSession(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifyFailedToStartSession(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_2
    sget-object p1, Lcom/google/android/gms/cast/framework/CastSession;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfar:Lcom/google/android/gms/cast/CastDevice;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Acquiring a connection to Google Play Services for %s"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/cast/framework/CastSession$zzd;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/cast/framework/CastSession$zzd;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzc;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzbky:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfar:Lcom/google/android/gms/cast/CastDevice;

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzezz:Lcom/google/android/gms/cast/framework/CastOptions;

    new-instance v6, Lcom/google/android/gms/cast/framework/CastSession$zzc;

    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/cast/framework/CastSession$zzc;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzc;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-string v4, "com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v4, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    invoke-direct {v4, v3, v6}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->build()Lcom/google/android/gms/cast/Cast$CastOptions;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method


# virtual methods
.method public addCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfak:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected end(Z)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfal:Lcom/google/android/gms/cast/framework/zzl;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/cast/framework/zzl;->zzb(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/google/android/gms/cast/framework/CastSession;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "disconnectFromDevice"

    aput-object v3, v2, v0

    const-class v3, Lcom/google/android/gms/cast/framework/zzl;

    const-string/jumbo v3, "zzl"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Unable to call %s on %s."

    invoke-virtual {v1, p1, v3, v2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifySessionEnded(I)V

    return-void
.end method

.method public getActiveInputState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->getActiveInputState(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getApplicationConnectionResult()Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfas:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    return-object v0
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->getApplicationMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->getApplicationStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCastDevice()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfar:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfaq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object v0
.end method

.method public getSessionRemainingTimeMs()J
    .locals 4

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfaq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfaq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandbyState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->getStandbyState(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVolume()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->getVolume(Lcom/google/android/gms/common/api/GoogleApiClient;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isMute()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->isMute(Lcom/google/android/gms/common/api/GoogleApiClient;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResuming(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfar:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method

.method protected onStarting(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfar:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method

.method public removeCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfak:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeMessageReceivedCallbacks(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_0
    return-void
.end method

.method protected resume(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->setMute(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    :cond_0
    return-void
.end method

.method public setVolume(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfap:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfam:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-interface {v1, v0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->setVolume(Lcom/google/android/gms/common/api/GoogleApiClient;D)V

    :cond_0
    return-void
.end method

.method protected start(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzaed()Lcom/google/android/gms/internal/zzbbi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzfao:Lcom/google/android/gms/internal/zzbbi;

    return-object v0
.end method
