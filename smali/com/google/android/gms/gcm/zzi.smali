.class public final Lcom/google/android/gms/gcm/zzi;
.super Ljava/lang/Object;


# static fields
.field public static final zzikn:Lcom/google/android/gms/gcm/zzi;

.field private static zziko:Lcom/google/android/gms/gcm/zzi;


# instance fields
.field private final zzikp:I

.field private final zzikq:I

.field private final zzikr:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/gcm/zzi;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/16 v3, 0xe10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzi;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzi;->zzikn:Lcom/google/android/gms/gcm/zzi;

    new-instance v0, Lcom/google/android/gms/gcm/zzi;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzi;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzi;->zziko:Lcom/google/android/gms/gcm/zzi;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/zzi;->zzikp:I

    const/16 p1, 0x1e

    iput p1, p0, Lcom/google/android/gms/gcm/zzi;->zzikq:I

    const/16 p1, 0xe10

    iput p1, p0, Lcom/google/android/gms/gcm/zzi;->zzikr:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/gcm/zzi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/gcm/zzi;

    iget v1, p1, Lcom/google/android/gms/gcm/zzi;->zzikp:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzi;->zzikp:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/google/android/gms/gcm/zzi;->zzikq:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzi;->zzikq:I

    if-ne v1, v3, :cond_2

    iget p1, p1, Lcom/google/android/gms/gcm/zzi;->zzikr:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzi;->zzikr:I

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/gcm/zzi;->zzikp:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lcom/google/android/gms/gcm/zzi;->zzikq:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/gcm/zzi;->zzikr:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/gcm/zzi;->zzikp:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzi;->zzikq:I

    iget v2, p0, Lcom/google/android/gms/gcm/zzi;->zzikr:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " initial_backoff="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maximum_backoff="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzawi()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzi;->zzikp:I

    return v0
.end method

.method public final zzawj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzi;->zzikq:I

    return v0
.end method

.method public final zzawk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzi;->zzikr:I

    return v0
.end method

.method public final zzv(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "retry_policy"

    iget v1, p0, Lcom/google/android/gms/gcm/zzi;->zzikp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "initial_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzi;->zzikq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maximum_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzi;->zzikr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
