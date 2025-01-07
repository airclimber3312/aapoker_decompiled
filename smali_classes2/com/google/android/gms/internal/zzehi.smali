.class final Lcom/google/android/gms/internal/zzehi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;

.field private synthetic zznfy:Lcom/google/android/gms/internal/zzehy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzehy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehi;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehi;->zznfy:Lcom/google/android/gms/internal/zzehy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehi;->zznfo:Lcom/google/android/gms/internal/zzegx;

    new-instance v1, Lcom/google/android/gms/internal/zzejp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehi;->zznfy:Lcom/google/android/gms/internal/zzehy;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzehy;->zzi(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehi;->zznfy:Lcom/google/android/gms/internal/zzehy;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzelu;->zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zze(Lcom/google/android/gms/internal/zzegr;)V

    return-void
.end method
