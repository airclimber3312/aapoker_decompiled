.class public final Lcom/google/android/gms/internal/zzeda;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegd;


# instance fields
.field private final zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmxo:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeda;->zzmxo:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeda;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeda;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeda;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzegf;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzedd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzedd;-><init>(Lcom/google/android/gms/internal/zzeda;Lcom/google/android/gms/internal/zzegf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeda;->zzmxo:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1, v0}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/FirebaseApp$IdTokenListener;)V

    return-void
.end method

.method public final zza(ZLcom/google/android/gms/internal/zzege;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeda;->zzmxo:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, p1}, Lcom/google/firebase/FirebaseApp;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeda;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzedc;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzedc;-><init>(Lcom/google/android/gms/internal/zzeda;Lcom/google/android/gms/internal/zzege;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeda;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzedb;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzedb;-><init>(Lcom/google/android/gms/internal/zzeda;Lcom/google/android/gms/internal/zzege;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
