.class final Lcom/google/android/gms/internal/zzehm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzele;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzele<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzehy;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic val$reason:I

.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehm;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput p2, p0, Lcom/google/android/gms/internal/zzehm;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzelc;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehm;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget v1, p0, Lcom/google/android/gms/internal/zzehm;->val$reason:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzelc;I)V

    const/4 p1, 0x0

    return p1
.end method
