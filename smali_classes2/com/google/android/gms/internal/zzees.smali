.class public final Lcom/google/android/gms/internal/zzees;
.super Ljava/lang/Object;


# instance fields
.field private final zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmzv:Lcom/google/android/gms/internal/zzeeq;

.field private final zzmzw:Lcom/google/android/gms/internal/zzemn;

.field private final zzmzx:Z

.field private final zzmzy:Ljava/lang/String;

.field private final zzmzz:Ljava/lang/String;

.field private final zznaa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzemn;Lcom/google/android/gms/internal/zzeeq;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzees;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzees;->zzmzv:Lcom/google/android/gms/internal/zzeeq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzees;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzees;->zzmzx:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzees;->zzmzy:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzees;->zzmzz:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzees;->zznaa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isPersistenceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzees;->zzmzx:Z

    return v0
.end method

.method public final zzbwk()Lcom/google/android/gms/internal/zzemn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzees;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    return-object v0
.end method

.method public final zzbwl()Lcom/google/android/gms/internal/zzeeq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzees;->zzmzv:Lcom/google/android/gms/internal/zzeeq;

    return-object v0
.end method

.method public final zzbwm()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzees;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final zzbwn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzees;->zzmzy:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbwo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzees;->zzmzz:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbwp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzees;->zznaa:Ljava/lang/String;

    return-object v0
.end method
