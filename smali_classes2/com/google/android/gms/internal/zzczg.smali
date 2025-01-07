.class public final Lcom/google/android/gms/internal/zzczg;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mState:I

.field private final zzata:Lcom/google/android/gms/common/util/zze;

.field private final zzknc:Ljava/lang/String;

.field private zzksg:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzkvn:Ljava/lang/String;

.field private final zzkvo:Ljava/lang/String;

.field private final zzkvp:Lcom/google/android/gms/internal/zzdba;

.field private final zzkvq:Lcom/google/android/gms/internal/zzdie;

.field private final zzkvr:Ljava/util/concurrent/ExecutorService;

.field private final zzkvs:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzkvu:Lcom/google/android/gms/internal/zzczp;

.field private zzkvv:Lcom/google/android/gms/internal/zzdav;

.field private zzkvw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzczu;",
            ">;"
        }
    .end annotation
.end field

.field private zzkvx:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdba;Lcom/google/android/gms/internal/zzdie;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzczp;)V
    .locals 11

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/zzczg;->mState:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzczg;->zzkvw:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzczg;->zzksg:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzczg;->zzkvx:Z

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/zzczg;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzczg;->zzknc:Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzdba;

    iput-object v3, v0, Lcom/google/android/gms/internal/zzczg;->zzkvp:Lcom/google/android/gms/internal/zzdba;

    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzdie;

    iput-object v3, v0, Lcom/google/android/gms/internal/zzczg;->zzkvq:Lcom/google/android/gms/internal/zzdie;

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    iput-object v3, v0, Lcom/google/android/gms/internal/zzczg;->zzkvr:Ljava/util/concurrent/ExecutorService;

    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v4, v0, Lcom/google/android/gms/internal/zzczg;->zzkvs:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tagmanager/zzcn;

    iput-object v4, v0, Lcom/google/android/gms/internal/zzczg;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/util/zze;

    iput-object v5, v0, Lcom/google/android/gms/internal/zzczg;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzczp;

    iput-object v5, v0, Lcom/google/android/gms/internal/zzczg;->zzkvu:Lcom/google/android/gms/internal/zzczp;

    move-object v5, p4

    iput-object v5, v0, Lcom/google/android/gms/internal/zzczg;->zzkvn:Ljava/lang/String;

    move-object v5, p3

    iput-object v5, v0, Lcom/google/android/gms/internal/zzczg;->zzkvo:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/zzczu;

    const-string v6, "gtm.load"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "gtm"

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    const/4 v10, 0x0

    move-object p1, v5

    move-object p2, v6

    move-object p3, v7

    move-object p4, v8

    move-object/from16 p5, v9

    move/from16 p6, v10

    move-object/from16 p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/google/android/gms/internal/zzczu;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzcn;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/zzczg;->zzkvw:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Container "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is scheduled for loading."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzczk;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzczk;-><init>(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzczh;)V

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzczg;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzczg;->mState:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzczg;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzczg;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzdav;)Lcom/google/android/gms/internal/zzdav;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczg;->zzkvv:Lcom/google/android/gms/internal/zzdav;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzczg;Ljava/util/List;)Ljava/util/List;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczg;->zzkvw:Ljava/util/List;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzczg;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzczg;->zzbj(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzczg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzczg;->zzkvx:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdav;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvv:Lcom/google/android/gms/internal/zzdav;

    return-object p0
.end method

.method private final zzbj(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczg;->zzksg:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczg;->zzknc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Refresh container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzczi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzczi;-><init>(Lcom/google/android/gms/internal/zzczg;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczg;->zzksg:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzczg;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvr:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzknc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzczp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvu:Lcom/google/android/gms/internal/zzczp;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdie;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvq:Lcom/google/android/gms/internal/zzdie;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzczg;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvw:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/tagmanager/zzcn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzczg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzczg;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvx:Z

    return p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdba;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvp:Lcom/google/android/gms/internal/zzdba;

    return-object p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/common/util/zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczg;->zzata:Lcom/google/android/gms/common/util/zze;

    return-object p0
.end method


# virtual methods
.method public final dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvr:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzczh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzczh;-><init>(Lcom/google/android/gms/internal/zzczg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzczu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczg;->zzkvr:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzczl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzczl;-><init>(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzczu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
