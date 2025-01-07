.class public final Lcom/google/android/gms/internal/zzbac;
.super Lcom/google/android/gms/internal/zzbgl;

# interfaces
.implements Lcom/google/android/gms/awareness/state/Weather;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzese:F

.field private final zzesf:F

.field private final zzesg:F

.field private final zzesh:I

.field private final zzesi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbad;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFI[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbac;->zzese:F

    iput p2, p0, Lcom/google/android/gms/internal/zzbac;->zzesf:F

    iput p3, p0, Lcom/google/android/gms/internal/zzbac;->zzesg:F

    iput p4, p0, Lcom/google/android/gms/internal/zzbac;->zzesh:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbac;->zzesi:[I

    return-void
.end method

.method private static zza(IF)F
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/high16 p0, 0x42000000    # 32.0f

    sub-float/2addr p1, p0

    const/high16 p0, 0x40a00000    # 5.0f

    mul-float p1, p1, p0

    const/high16 p0, 0x41100000    # 9.0f

    div-float/2addr p1, p0

    return p1

    :cond_0
    const-string p1, "Invalid temperature unit %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "WeatherImpl"

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/zzfi;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid temperature unit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return p1
.end method


# virtual methods
.method public final getConditions()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbac;->zzesi:[I

    return-object v0
.end method

.method public final getDewPoint(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbac;->zzesg:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbac;->zza(IF)F

    move-result p1

    return p1
.end method

.method public final getFeelsLikeTemperature(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbac;->zzesf:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbac;->zza(IF)F

    move-result p1

    return p1
.end method

.method public final getHumidity()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbac;->zzesh:I

    return v0
.end method

.method public final getTemperature(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbac;->zzese:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbac;->zza(IF)F

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Temp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbac;->getTemperature(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "F/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbac;->getTemperature(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "C, Feels="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbac;->getFeelsLikeTemperature(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbac;->getFeelsLikeTemperature(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "C, Dew="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbac;->getDewPoint(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbac;->getDewPoint(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "C, Humidity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->getHumidity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Condition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->getConditions()[I

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "unknown"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->getConditions()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget v6, v2, v5

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "]"

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzbac;->zzese:F

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IF)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/zzbac;->zzesf:F

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IF)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzbac;->zzesg:F

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IF)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->getHumidity()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbac;->getConditions()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
