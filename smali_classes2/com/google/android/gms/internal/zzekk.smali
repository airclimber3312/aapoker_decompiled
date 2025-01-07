.class public final Lcom/google/android/gms/internal/zzekk;
.super Ljava/lang/Object;


# static fields
.field private static final zznkm:Lcom/google/android/gms/internal/zzela;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzela<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zznkn:Lcom/google/android/gms/internal/zzela;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzela<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zznko:Lcom/google/android/gms/internal/zzekw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzekw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zznkp:Lcom/google/android/gms/internal/zzekw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzekw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zznkl:Lcom/google/android/gms/internal/zzekw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzekw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzekl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekk;->zznkm:Lcom/google/android/gms/internal/zzela;

    new-instance v0, Lcom/google/android/gms/internal/zzekm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekk;->zznkn:Lcom/google/android/gms/internal/zzela;

    new-instance v0, Lcom/google/android/gms/internal/zzekw;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzekk;->zznko:Lcom/google/android/gms/internal/zzekw;

    new-instance v0, Lcom/google/android/gms/internal/zzekw;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzekk;->zznkp:Lcom/google/android/gms/internal/zzekw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzekw;->zzcaf()Lcom/google/android/gms/internal/zzekw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzekw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzekw<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzekk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzekk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzekw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{PruneForest:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekz;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/zzekz<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    new-instance v1, Lcom/google/android/gms/internal/zzekn;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzekn;-><init>(Lcom/google/android/gms/internal/zzekk;Lcom/google/android/gms/internal/zzekz;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzcab()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    sget-object v1, Lcom/google/android/gms/internal/zzekk;->zznkn:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzela;)Z

    move-result v0

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzekk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekw;->zze(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzekw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzekk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzekk;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object v0
.end method

.method public final zzv(Lcom/google/android/gms/internal/zzegu;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekw;->zzag(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzw(Lcom/google/android/gms/internal/zzegu;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekw;->zzag(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzx(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    sget-object v1, Lcom/google/android/gms/internal/zzekk;->zznkm:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    sget-object v1, Lcom/google/android/gms/internal/zzekk;->zznkn:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    sget-object v1, Lcom/google/android/gms/internal/zzekk;->zznko:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzekk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzekk;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t prune path that was kept previously!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzy(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    sget-object v1, Lcom/google/android/gms/internal/zzekk;->zznkm:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zznkl:Lcom/google/android/gms/internal/zzekw;

    sget-object v1, Lcom/google/android/gms/internal/zzekk;->zznkp:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzekk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzekk;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object v0
.end method
