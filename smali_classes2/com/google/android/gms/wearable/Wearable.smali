.class public Lcom/google/android/gms/wearable/Wearable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/Wearable$WearableOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DataApi:Lcom/google/android/gms/wearable/DataApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MessageApi:Lcom/google/android/gms/wearable/MessageApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NodeApi:Lcom/google/android/gms/wearable/NodeApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzegu:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/wearable/internal/zzhg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzegv:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/wearable/internal/zzhg;",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static zzlrb:Lcom/google/android/gms/wearable/zzc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzlrc:Lcom/google/android/gms/wearable/zza;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzlrd:Lcom/google/android/gms/wearable/zzf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzlre:Lcom/google/android/gms/wearable/zzi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzlrf:Lcom/google/android/gms/wearable/zzu;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbw;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzeu;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzeu;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzfg;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzfg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzlrb:Lcom/google/android/gms/wearable/zzc;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzlrc:Lcom/google/android/gms/wearable/zza;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbv;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbv;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzlrd:Lcom/google/android/gms/wearable/zzf;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzgi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzlre:Lcom/google/android/gms/wearable/zzi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhq;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzhq;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzlrf:Lcom/google/android/gms/wearable/zzu;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v1, Lcom/google/android/gms/wearable/zzj;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/zzj;-><init>()V

    sput-object v1, Lcom/google/android/gms/wearable/Wearable;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Wearable.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v2, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCapabilityClient(Landroid/app/Activity;)Lcom/google/android/gms/wearable/CapabilityClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzaa;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzaa;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getCapabilityClient(Landroid/app/Activity;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/CapabilityClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzaa;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzaa;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getCapabilityClient(Landroid/content/Context;)Lcom/google/android/gms/wearable/CapabilityClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzaa;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzaa;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getCapabilityClient(Landroid/content/Context;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/CapabilityClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzaa;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzaa;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getChannelClient(Landroid/app/Activity;)Lcom/google/android/gms/wearable/ChannelClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzao;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzao;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getChannelClient(Landroid/app/Activity;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/ChannelClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzao;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzao;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getChannelClient(Landroid/content/Context;)Lcom/google/android/gms/wearable/ChannelClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzao;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzao;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getChannelClient(Landroid/content/Context;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/ChannelClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzao;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzao;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getDataClient(Landroid/app/Activity;)Lcom/google/android/gms/wearable/DataClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcj;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzcj;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getDataClient(Landroid/app/Activity;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/DataClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcj;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzcj;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getDataClient(Landroid/content/Context;)Lcom/google/android/gms/wearable/DataClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcj;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzcj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getDataClient(Landroid/content/Context;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/DataClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcj;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzcj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getMessageClient(Landroid/app/Activity;)Lcom/google/android/gms/wearable/MessageClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzez;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzez;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getMessageClient(Landroid/app/Activity;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/MessageClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzez;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzez;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getMessageClient(Landroid/content/Context;)Lcom/google/android/gms/wearable/MessageClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzez;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzez;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getMessageClient(Landroid/content/Context;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/MessageClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzez;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzez;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getNodeClient(Landroid/app/Activity;)Lcom/google/android/gms/wearable/NodeClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzfl;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzfl;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getNodeClient(Landroid/app/Activity;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/NodeClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzfl;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzfl;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getNodeClient(Landroid/content/Context;)Lcom/google/android/gms/wearable/NodeClient;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzfl;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/internal/zzfl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method

.method public static getNodeClient(Landroid/content/Context;Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/wearable/NodeClient;
    .locals 1

    const-string v0, "options must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzfl;

    invoke-static {p1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;->zza(Lcom/google/android/gms/wearable/Wearable$WearableOptions;)Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzfl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-object v0
.end method
