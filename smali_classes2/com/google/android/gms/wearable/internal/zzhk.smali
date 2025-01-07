.class public final Lcom/google/android/gms/wearable/internal/zzhk;
.super Lcom/google/android/gms/wearable/internal/zzen;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/wearable/internal/zzen;"
    }
.end annotation


# instance fields
.field private final zzlux:[Landroid/content/IntentFilter;

.field private zzlvx:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzlvy:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzlvz:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzlwa:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzlwb:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzlwc:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzlwd:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzlwe:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlwf:Ljava/lang/String;


# direct methods
.method private constructor <init>([Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzen;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/IntentFilter;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlux:[Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwf:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzhk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzhk<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhk;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/wearable/internal/zzhk;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwd:Lcom/google/android/gms/common/api/internal/zzci;

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/common/api/internal/zzci;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzhk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzhk<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzhk;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlvz:Lcom/google/android/gms/common/api/internal/zzci;

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/common/api/internal/zzci;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzhk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzhk<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzhk;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwa:Lcom/google/android/gms/common/api/internal/zzci;

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/common/api/internal/zzci;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzhk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzhk<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzhk;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwd:Lcom/google/android/gms/common/api/internal/zzci;

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/common/api/internal/zzci;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzhk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzhk<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzhk;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p0, v0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwe:Lcom/google/android/gms/common/api/internal/zzci;

    return-object v0
.end method

.method private static zzo(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzci;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzhk;->zzo(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlvx:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzhk;->zzo(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlvy:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlvz:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzhk;->zzo(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlvz:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwa:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzhk;->zzo(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwa:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzhk;->zzo(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwb:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzhk;->zzo(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwc:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwd:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzhk;->zzo(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwd:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwe:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzhk;->zzo(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwe:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method

.method public final onConnectedNodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/internal/zzfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzah;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwe:Lcom/google/android/gms/common/api/internal/zzci;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzho;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzho;-><init>(Lcom/google/android/gms/wearable/internal/zzah;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzaw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwd:Lcom/google/android/gms/common/api/internal/zzci;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzhn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzhn;-><init>(Lcom/google/android/gms/wearable/internal/zzaw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzfe;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwa:Lcom/google/android/gms/common/api/internal/zzci;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzhm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzhm;-><init>(Lcom/google/android/gms/wearable/internal/zzfe;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzfo;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzi;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzl;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/wearable/internal/zzfo;)V
    .locals 0

    return-void
.end method

.method public final zzblz()[Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlux:[Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final zzbma()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlwf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbo(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhk;->zzlvz:Lcom/google/android/gms/common/api/internal/zzci;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzhl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzhl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void
.end method
