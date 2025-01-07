.class final Lcom/google/android/gms/internal/zzeld;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzelf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzelf<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic zznlk:Lcom/google/android/gms/internal/zzelf;

.field private synthetic zznll:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzelc;Lcom/google/android/gms/internal/zzelf;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeld;->zznlk:Lcom/google/android/gms/internal/zzelf;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzeld;->zznll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzelc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelc<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zznlk:Lcom/google/android/gms/internal/zzelf;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeld;->zznll:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzelc;->zza(Lcom/google/android/gms/internal/zzelf;ZZ)V

    return-void
.end method
