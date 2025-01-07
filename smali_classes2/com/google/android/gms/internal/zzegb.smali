.class public final Lcom/google/android/gms/internal/zzegb;
.super Ljava/lang/Object;


# instance fields
.field private final zzmxz:Lcom/google/android/gms/internal/zzemm;

.field private zzndg:J

.field private zzndi:D

.field private zzndj:D

.field private final zzndo:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzndp:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzegb;->zzndg:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzegb;->zzndi:D

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzegb;->zzndp:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzegb;->zzndj:D

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegb;->zzndo:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/google/android/gms/internal/zzemm;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzemm;-><init>(Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegb;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    return-void
.end method


# virtual methods
.method public final zzbt(J)Lcom/google/android/gms/internal/zzegb;
    .locals 0

    const-wide/16 p1, 0x3e8

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegb;->zzndg:J

    return-object p0
.end method

.method public final zzbu(J)Lcom/google/android/gms/internal/zzegb;
    .locals 0

    const-wide/16 p1, 0x7530

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegb;->zzndp:J

    return-object p0
.end method

.method public final zzbxt()Lcom/google/android/gms/internal/zzefz;
    .locals 13

    new-instance v12, Lcom/google/android/gms/internal/zzefz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegb;->zzndo:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegb;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzegb;->zzndg:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzegb;->zzndp:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzegb;->zzndj:D

    iget-wide v9, p0, Lcom/google/android/gms/internal/zzegb;->zzndi:D

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzefz;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzemm;JJDDLcom/google/android/gms/internal/zzega;)V

    return-object v12
.end method

.method public final zzi(D)Lcom/google/android/gms/internal/zzegb;
    .locals 0

    const-wide p1, 0x3ff4cccccccccccdL    # 1.3

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegb;->zzndj:D

    return-object p0
.end method

.method public final zzj(D)Lcom/google/android/gms/internal/zzegb;
    .locals 0

    const-wide p1, 0x3fe6666666666666L    # 0.7

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegb;->zzndi:D

    return-object p0
.end method
