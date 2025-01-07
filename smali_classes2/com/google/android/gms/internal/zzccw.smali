.class public final Lcom/google/android/gms/internal/zzccw;
.super Ljava/lang/Object;


# static fields
.field private static final zzids:[Ljava/lang/String;


# instance fields
.field private final zzcc:I

.field private final zzidt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "requestId"

    const-string v1, "outcome"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzccw;->zzids:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzccw;->zzcc:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzccw;->zzidt:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/HashMap;Lcom/google/android/gms/internal/zzccx;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzccw;-><init>(ILjava/util/HashMap;)V

    return-void
.end method

.method public static zzbj(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/zzccw;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzccy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzccy;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzccy;->zzdx(I)Lcom/google/android/gms/internal/zzccy;

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzby(I)I

    move-result v3

    const-string v4, "requestId"

    invoke-virtual {p0, v4, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "outcome"

    invoke-virtual {p0, v5, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->zzc(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/zzccy;->zzw(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzccy;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzccy;->zzavo()Lcom/google/android/gms/internal/zzccw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getRequestIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccw;->zzidt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestOutcome(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccw;->zzidt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Request "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was not part of the update operation!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccw;->zzidt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
