.class public final Lcom/google/android/gms/fitness/FitnessOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/FitnessOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzhhh:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->map:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/zzf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/FitnessOptions$Builder;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zzc(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zzhhh:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p0
.end method


# virtual methods
.method public final addDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string/jumbo v1, "valid access types are FitnessOptions.ACCESS_READ or FitnessOptions.ACCESS_WRITE"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->map:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->map:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/fitness/FitnessOptions;
    .locals 4

    new-instance v0, Lcom/google/android/gms/fitness/FitnessOptions;

    iget-object v1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zzhhh:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/FitnessOptions;-><init>(Ljava/util/Map;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/fitness/zzf;)V

    return-object v0
.end method
