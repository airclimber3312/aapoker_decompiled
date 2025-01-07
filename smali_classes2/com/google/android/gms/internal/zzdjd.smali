.class public final Lcom/google/android/gms/internal/zzdjd;
.super Ljava/lang/Object;


# instance fields
.field private zzfli:Ljava/lang/String;

.field private final zzlcb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdjh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlcc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdje;",
            ">;"
        }
    .end annotation
.end field

.field private zzlcd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjd;->zzlcb:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjd;->zzlcc:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjd;->zzfli:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzdjd;->zzlcd:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdjh;)Lcom/google/android/gms/internal/zzdjd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjd;->zzlcb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzdje;)Lcom/google/android/gms/internal/zzdjd;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdje;->zzbkd()Ljava/util/Map;

    move-result-object v0

    const-string v1, "instance_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdjn;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdjd;->zzlcc:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzbkc()Lcom/google/android/gms/internal/zzdjc;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzdjc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdjd;->zzlcb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdjd;->zzlcc:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdjd;->zzfli:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzdjc;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final zzng(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdjd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdjd;->zzfli:Ljava/lang/String;

    return-object p0
.end method
