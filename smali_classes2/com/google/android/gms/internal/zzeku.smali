.class final Lcom/google/android/gms/internal/zzeku;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzekz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzekz<",
        "Ljava/util/Map<",
        "Lcom/google/android/gms/internal/zzelr;",
        "Lcom/google/android/gms/internal/zzeko;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zznla:Lcom/google/android/gms/internal/zzekp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzekp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeku;->zznla:Lcom/google/android/gms/internal/zzekp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzeko;

    iget-boolean p3, p2, Lcom/google/android/gms/internal/zzeko;->complete:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzeku;->zznla:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeko;->zzcac()Lcom/google/android/gms/internal/zzeko;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzekp;Lcom/google/android/gms/internal/zzeko;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
