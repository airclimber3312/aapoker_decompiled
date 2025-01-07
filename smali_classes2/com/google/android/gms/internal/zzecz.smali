.class public final Lcom/google/android/gms/internal/zzecz;
.super Ljava/lang/Object;


# static fields
.field public static final zzmvk:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvl:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvm:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvn:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvo:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvp:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvq:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvr:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvs:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvt:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvu:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvv:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvw:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmvx:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "crash:enabled"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzccg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvk:Lcom/google/android/gms/internal/zzcce;

    new-instance v0, Lcom/google/android/gms/internal/zzccj;

    const-string v2, "crash:gateway_url"

    const-string v3, "https://mobilecrashreporting.googleapis.com/v1/crashes:batchCreate?key="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzccj;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvl:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:log_buffer_capacity"

    const/16 v2, 0x64

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvm:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:log_buffer_max_total_size"

    const v3, 0x8000

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvn:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:crash_backlog_capacity"

    const/4 v3, 0x5

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvo:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:crash_backlog_max_age"

    const-wide/32 v4, 0x240c8400

    invoke-static {v1, v0, v4, v5}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzcci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvp:Lcom/google/android/gms/internal/zzcce;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string v0, "crash:starting_backoff"

    invoke-static {v1, v0, v4, v5}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzcci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvq:Lcom/google/android/gms/internal/zzcce;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3c

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string v0, "crash:backoff_limit"

    invoke-static {v1, v0, v4, v5}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzcci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvr:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:retry_num_attempts"

    const/16 v4, 0xc

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvs:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:batch_size"

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvt:Lcom/google/android/gms/internal/zzcce;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-string v0, "crash:batch_throttle"

    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzcci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvu:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:frame_depth"

    const/16 v3, 0x3c

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvv:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:receiver_delay"

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvw:Lcom/google/android/gms/internal/zzcce;

    const-string v0, "crash:thread_idle_timeout"

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzecz;->zzmvx:Lcom/google/android/gms/internal/zzcce;

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzasn()Lcom/google/android/gms/internal/zzcck;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzaso()Lcom/google/android/gms/internal/zzccl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzccl;->initialize(Landroid/content/Context;)V

    return-void
.end method
