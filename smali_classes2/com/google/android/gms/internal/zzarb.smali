.class final Lcom/google/android/gms/internal/zzarb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdyj:Lcom/google/android/gms/internal/zzaqz;

.field private synthetic zzdyk:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqz;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarb;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzarb;->zzdyk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarb;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqz;->zza(Lcom/google/android/gms/internal/zzaqz;)Lcom/google/android/gms/internal/zzarw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarw;->zzzk()V

    return-void
.end method
