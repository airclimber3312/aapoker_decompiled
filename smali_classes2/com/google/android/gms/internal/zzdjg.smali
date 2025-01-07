.class public final Lcom/google/android/gms/internal/zzdjg;
.super Ljava/lang/Object;


# instance fields
.field private final zzlce:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdjn;",
            ">;"
        }
    .end annotation
.end field

.field private zzlcf:Lcom/google/android/gms/internal/zzdjn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjg;->zzlce:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdjn;)Lcom/google/android/gms/internal/zzdjg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjg;->zzlce:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzdjn;)Lcom/google/android/gms/internal/zzdjg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdjg;->zzlcf:Lcom/google/android/gms/internal/zzdjn;

    return-object p0
.end method

.method public final zzbke()Lcom/google/android/gms/internal/zzdje;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzdje;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdjg;->zzlce:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdjg;->zzlcf:Lcom/google/android/gms/internal/zzdjn;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdje;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzdjn;Lcom/google/android/gms/internal/zzdjf;)V

    return-object v0
.end method
