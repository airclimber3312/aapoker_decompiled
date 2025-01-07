.class final Lcom/google/android/gms/internal/zzedd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$IdTokenListener;


# instance fields
.field final synthetic zzmxq:Lcom/google/android/gms/internal/zzegf;

.field private synthetic zzmxr:Lcom/google/android/gms/internal/zzeda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeda;Lcom/google/android/gms/internal/zzegf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedd;->zzmxr:Lcom/google/android/gms/internal/zzeda;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedd;->zzmxq:Lcom/google/android/gms/internal/zzegf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/firebase/internal/zzc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedd;->zzmxr:Lcom/google/android/gms/internal/zzeda;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeda;->zza(Lcom/google/android/gms/internal/zzeda;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzede;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzede;-><init>(Lcom/google/android/gms/internal/zzedd;Lcom/google/firebase/internal/zzc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
