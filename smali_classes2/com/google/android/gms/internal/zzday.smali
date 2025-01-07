.class final Lcom/google/android/gms/internal/zzday;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdgb;


# instance fields
.field private synthetic zzkxw:Lcom/google/android/gms/internal/zzdav;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdav;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzday;->zzkxw:Lcom/google/android/gms/internal/zzdav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdav;Lcom/google/android/gms/internal/zzdaw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzday;-><init>(Lcom/google/android/gms/internal/zzdav;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzday;->zzkxw:Lcom/google/android/gms/internal/zzdav;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdav;->zzb(Lcom/google/android/gms/internal/zzdav;)Lcom/google/android/gms/tagmanager/zzce;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzce;->zzg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Error calling customEvaluator proxy:"

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
