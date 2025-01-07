.class final Lcom/google/android/gms/internal/zzehn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzelf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzelf<",
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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehn;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput p2, p0, Lcom/google/android/gms/internal/zzehn;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzelc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehn;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget v1, p0, Lcom/google/android/gms/internal/zzehn;->val$reason:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzelc;I)V

    return-void
.end method
