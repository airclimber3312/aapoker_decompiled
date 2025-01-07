.class final Lcom/google/android/gms/internal/zzeks;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzela<",
        "Lcom/google/android/gms/internal/zzeko;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzbw(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzeko;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzeko;->zzjgp:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
