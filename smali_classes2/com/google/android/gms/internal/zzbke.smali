.class public final Lcom/google/android/gms/internal/zzbke;
.super Lcom/google/android/gms/awareness/fence/AwarenessFence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbke;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgni:Lcom/google/android/gms/internal/zzffl;

.field private zzgnj:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbke;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzffl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffl;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbke;->zzgni:Lcom/google/android/gms/internal/zzffl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbke;->zzaot()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgni:Lcom/google/android/gms/internal/zzffl;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbke;->zzaot()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjt;)Lcom/google/android/gms/internal/zzbke;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjt;->zzaou()Lcom/google/android/gms/internal/zzffe;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzplg:Lcom/google/android/gms/internal/zzffe;

    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbju;)Lcom/google/android/gms/internal/zzbke;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbju;->zzaox()Lcom/google/android/gms/internal/zzfff;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzplk:Lcom/google/android/gms/internal/zzfff;

    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjy;)Lcom/google/android/gms/internal/zzbke;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjy;->zzaoy()Lcom/google/android/gms/internal/zzffg;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzpll:Lcom/google/android/gms/internal/zzffg;

    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbke;)Lcom/google/android/gms/internal/zzbke;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object p0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzh(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffl;->zzplc:[Lcom/google/android/gms/internal/zzffl;

    new-instance v0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbku;)Lcom/google/android/gms/internal/zzbke;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbku;->zzaoz()Lcom/google/android/gms/internal/zzffq;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzple:Lcom/google/android/gms/internal/zzffq;

    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbkw;)Lcom/google/android/gms/internal/zzbke;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkw;->zzapa()Lcom/google/android/gms/internal/zzffz;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzplt:Lcom/google/android/gms/internal/zzffz;

    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkx;->zzapb()Lcom/google/android/gms/internal/zzfgb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzfgb;->zzpmz:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkx;->zzapb()Lcom/google/android/gms/internal/zzfgb;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzplu:Lcom/google/android/gms/internal/zzfgb;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkx;->zzapb()Lcom/google/android/gms/internal/zzfgb;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzpld:Lcom/google/android/gms/internal/zzfgb;

    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbky;)Lcom/google/android/gms/internal/zzbke;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbky;->zzapc()Lcom/google/android/gms/internal/zzfgc;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzplp:Lcom/google/android/gms/internal/zzfgc;

    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method private final zzaos()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgni:Lcom/google/android/gms/internal/zzffl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B

    new-instance v1, Lcom/google/android/gms/internal/zzffl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzffl;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzfls;[B)Lcom/google/android/gms/internal/zzfls;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgni:Lcom/google/android/gms/internal/zzffl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzflr; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ContextFenceStub"

    const-string v2, "Could not deserialize context fence bytes."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzfi;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbke;->zzaot()V

    return-void
.end method

.method private final zzaot()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgni:Lcom/google/android/gms/internal/zzffl;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzcp(I)Lcom/google/android/gms/internal/zzffl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzffl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffl;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzffl;->type:I

    return-object v0
.end method

.method public static zzf(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbke;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzbke;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbke;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zzh(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzffl;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzplc:[Lcom/google/android/gms/internal/zzffl;

    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method public static zzg(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbke;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzbke;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbke;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbke;->zzcp(I)Lcom/google/android/gms/internal/zzffl;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zzh(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzffl;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzffl;->zzplc:[Lcom/google/android/gms/internal/zzffl;

    new-instance p0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbke;-><init>(Lcom/google/android/gms/internal/zzffl;)V

    return-object p0
.end method

.method private static zzh(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzffl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzbke;",
            ">;)[",
            "Lcom/google/android/gms/internal/zzffl;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzffl;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbke;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbke;->zzaos()V

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbke;->zzgni:Lcom/google/android/gms/internal/zzffl;

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbke;->zzaos()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgni:Lcom/google/android/gms/internal/zzffl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfls;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgnj:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzgni:Lcom/google/android/gms/internal/zzffl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfls;->zzc(Lcom/google/android/gms/internal/zzfls;)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
