.class final Lcom/google/android/gms/internal/zzefm;
.super Ljava/lang/Object;


# instance fields
.field private zznbp:Ljava/lang/String;

.field private zznbq:Lcom/google/android/gms/internal/zzefo;

.field private zznbv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zznbw:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefm;->zznbp:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefm;->zznbv:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefm;->zznbq:Lcom/google/android/gms/internal/zzefo;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;Lcom/google/android/gms/internal/zzeez;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzefm;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefm;)Lcom/google/android/gms/internal/zzefo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefm;->zznbq:Lcom/google/android/gms/internal/zzefo;

    return-object p0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefm;->zznbp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbxc()Lcom/google/android/gms/internal/zzefo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefm;->zznbq:Lcom/google/android/gms/internal/zzefo;

    return-object v0
.end method

.method public final zzbxg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefm;->zznbv:Ljava/util/Map;

    return-object v0
.end method

.method public final zzbxh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzefm;->zznbw:Z

    return-void
.end method

.method public final zzbxi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefm;->zznbw:Z

    return v0
.end method
