.class public final Lcom/google/android/gms/internal/zzayq;
.super Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzayq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzerb:Lcom/google/android/gms/internal/zzffh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbab;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzayq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzffh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/zzffh;->zzkal:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/zzffh;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzffh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/zzffh;->zzkal:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/zzffh;->type:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, v0, Lcom/google/android/gms/internal/zzffh;->content:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;-><init>()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzffh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffh;-><init>()V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzfls;[B)Lcom/google/android/gms/internal/zzfls;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffh;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzflr; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BeaconStateImpl"

    const-string v0, "Could not deserialize BeaconFence.BeaconTypeFilter"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfi;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    return-void
.end method

.method private final getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffh;->content:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffh;->content:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffh;->content:[B

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzffh;->zzkal:Ljava/lang/String;

    return-object v0
.end method

.method private final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzffh;->type:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzayq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzayq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzayq;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzayq;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getContent()[B

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzayq;->getContent()[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getNamespace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getContent()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getContent()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getContent()[B

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayq;->getContent()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfls;->zzc(Lcom/google/android/gms/internal/zzfls;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzadf()Lcom/google/android/gms/internal/zzffh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzerb:Lcom/google/android/gms/internal/zzffh;

    return-object v0
.end method
