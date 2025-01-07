.class public final Lcom/google/android/gms/internal/zzbjp;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbjp;",
            ">;"
        }
    .end annotation
.end field

.field private static zzgmt:Lcom/google/android/gms/internal/zzfj;

.field private static zzgmu:[I


# instance fields
.field private zzgmv:Lcom/google/android/gms/internal/zzffi;

.field private zzgmw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjp;->zzgmt:Lcom/google/android/gms/internal/zzfj;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzbjp;->zzgmu:[I

    new-instance v0, Lcom/google/android/gms/internal/zzbjr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmw:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjp;->zzaot()V

    return-void
.end method

.method private final getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjp;->zzaos()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    return-object v0
.end method

.method private final zzaos()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmw:[B

    new-instance v1, Lcom/google/android/gms/internal/zzffi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzffi;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzfls;[B)Lcom/google/android/gms/internal/zzfls;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffi;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmw:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzflr; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ContextData"

    const-string v2, "Could not deserialize context bytes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjp;->zzaot()V

    return-void
.end method

.method private final zzaot()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmw:[B

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmw:[B

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmw:[B

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmw:[B

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


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbjp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbjp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjp;->zzaos()V

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbjp;->zzaos()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbjp;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    iget v1, v1, Lcom/google/android/gms/internal/zzffm;->version:I

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    iget p1, p1, Lcom/google/android/gms/internal/zzffm;->version:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjp;->zzaos()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjp;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    iget v1, v1, Lcom/google/android/gms/internal/zzffm;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjp;->zzaos()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfls;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbjp;->zzgmt:Lcom/google/android/gms/internal/zzfj;

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzbjp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmw:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjp;->zzgmv:Lcom/google/android/gms/internal/zzffi;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfls;->zzc(Lcom/google/android/gms/internal/zzfls;)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
