.class final Lcom/google/android/gms/internal/zzekt;
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
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzeko;

    invoke-static {}, Lcom/google/android/gms/internal/zzekp;->zzcae()Lcom/google/android/gms/internal/zzela;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
