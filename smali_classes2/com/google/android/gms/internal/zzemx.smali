.class public final Lcom/google/android/gms/internal/zzemx;
.super Ljava/lang/Object;


# instance fields
.field private final zzmzh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzegu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmzi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzegu;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzemx;->zzmzh:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzemx;->zzmzi:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of posts need to be n-1 for n hashes in CompoundHash"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzemz;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/zzeni;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzemz;->zza(Lcom/google/android/gms/internal/zzemz;Lcom/google/android/gms/internal/zzeni;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/zzems;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/zzems;

    new-instance v0, Lcom/google/android/gms/internal/zzemy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzemy;-><init>(Lcom/google/android/gms/internal/zzemz;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzems;->zza(Lcom/google/android/gms/internal/zzemv;Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected children node, but got: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t calculate hash on empty node!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzemz;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzemx;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzemz;)V

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzemx;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzena;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzena;-><init>(Lcom/google/android/gms/internal/zzenn;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/zzemx;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzemx;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzemz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzemz;-><init>(Lcom/google/android/gms/internal/zzenb;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzemx;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzemz;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzemz;->zza(Lcom/google/android/gms/internal/zzemz;)V

    new-instance p0, Lcom/google/android/gms/internal/zzemx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzemz;->zzb(Lcom/google/android/gms/internal/zzemz;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzemz;->zzc(Lcom/google/android/gms/internal/zzemz;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzemx;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final zzbwi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzegu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemx;->zzmzh:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbwj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemx;->zzmzi:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
