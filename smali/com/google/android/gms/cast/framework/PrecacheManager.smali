.class public Lcom/google/android/gms/cast/framework/PrecacheManager;
.super Ljava/lang/Object;


# instance fields
.field private final zzeui:Lcom/google/android/gms/internal/zzbei;

.field private final zzezv:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzezz:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzfbe:Lcom/google/android/gms/internal/zzbdj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/zzbdj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbei;

    const-string v1, "PrecacheManager"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbei;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzeui:Lcom/google/android/gms/internal/zzbei;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzezz:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzezv:Lcom/google/android/gms/cast/framework/SessionManager;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzfbe:Lcom/google/android/gms/internal/zzbdj;

    return-void
.end method


# virtual methods
.method public precache(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzezv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentSession()Lcom/google/android/gms/cast/framework/Session;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzfbe:Lcom/google/android/gms/internal/zzbdj;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzezz:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3, p1, v1}, Lcom/google/android/gms/internal/zzbdj;->zza([Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    instance-of v3, v0, Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const-string v0, "Failed to get RemoteMediaClient from current cast session."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const-string v0, "Current session is not a CastSession. Precache is not supported."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No precache data found to be precached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
