.class public final Lcom/google/android/gms/internal/zzczo;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbwg:Ljava/util/concurrent/ExecutorService;

.field private final zzkvq:Lcom/google/android/gms/internal/zzdie;

.field private final zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzkwb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzkwc:Lcom/google/android/gms/tagmanager/zzce;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V
    .locals 7

    new-instance v4, Lcom/google/android/gms/internal/zzdie;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzdie;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdcf$zza;->zzes(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzdch;->zzbjh()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzczo;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/zzdie;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/zzdie;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczo;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzce;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczo;->zzkwc:Lcom/google/android/gms/tagmanager/zzce;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdie;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczo;->zzkvq:Lcom/google/android/gms/internal/zzdie;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczo;->zzbwg:Ljava/util/concurrent/ExecutorService;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczo;->zzkwb:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzczg;
    .locals 14

    move-object v0, p0

    move-object v3, p1

    new-instance v6, Lcom/google/android/gms/internal/zzdba;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzczo;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzczo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzczo;->zzkwc:Lcom/google/android/gms/tagmanager/zzce;

    invoke-direct {v6, v1, v2, v4, p1}, Lcom/google/android/gms/internal/zzdba;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Ljava/lang/String;)V

    new-instance v12, Lcom/google/android/gms/internal/zzczp;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzczo;->mContext:Landroid/content/Context;

    invoke-direct {v12, v1, p1}, Lcom/google/android/gms/internal/zzczp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/internal/zzczg;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzczo;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzczo;->zzkvq:Lcom/google/android/gms/internal/zzdie;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzczo;->zzbwg:Ljava/util/concurrent/ExecutorService;

    iget-object v9, v0, Lcom/google/android/gms/internal/zzczo;->zzkwb:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v0, Lcom/google/android/gms/internal/zzczo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzanq()Lcom/google/android/gms/common/util/zze;

    move-result-object v11

    move-object v1, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzczg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdba;Lcom/google/android/gms/internal/zzdie;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzczp;)V

    return-object v13
.end method
