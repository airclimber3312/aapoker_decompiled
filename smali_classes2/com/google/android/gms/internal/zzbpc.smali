.class final synthetic Lcom/google/android/gms/internal/zzbpc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zzgvh:Lcom/google/android/gms/internal/zzblv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpc;->zzgvh:Lcom/google/android/gms/internal/zzblv;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzgvh:Lcom/google/android/gms/internal/zzblv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzboz;->zza(Lcom/google/android/gms/internal/zzblv;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/drive/events/ListenerToken;

    move-result-object p1

    return-object p1
.end method
