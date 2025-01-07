.class public Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;
.super Lcom/google/android/gms/internal/zzbgl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$UnsupportedTokenBindingIdValueTypeException;,
        Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;
    }
.end annotation


# static fields
.field public static final ABSENT:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNAVAILABLE:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

.field public static final UNUSED:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;


# instance fields
.field private final zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

.field private final zzhfs:Ljava/lang/String;

.field private final zzhft:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->ABSENT:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    const-string v1, "unavailable"

    invoke-direct {v0, v1}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->UNAVAILABLE:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    const-string v1, "unused"

    invoke-direct {v0, v1}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->UNUSED:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->ABSENT:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfs:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->toTokenBindingIdValueType(I)Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;
    :try_end_0
    .catch Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$UnsupportedTokenBindingIdValueTypeException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfs:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->STRING:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->OBJECT:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfs:Ljava/lang/String;

    return-void
.end method

.method public static toTokenBindingIdValueType(I)Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$UnsupportedTokenBindingIdValueTypeException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->values()[Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->zza(Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;)I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$UnsupportedTokenBindingIdValueTypeException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$UnsupportedTokenBindingIdValueTypeException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    iget-object v3, p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/zzr;->zzhfu:[I

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    invoke-virtual {v3}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfs:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfs:Ljava/lang/String;

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getObjectValue()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getObjectValueAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfs:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    return-object v0
.end method

.method public getTypeAsInt()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    invoke-static {v0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->zza(Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/zzr;->zzhfu:[I

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfr:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    invoke-virtual {v2}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhft:Ljava/lang/String;

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->zzhfs:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->getTypeAsInt()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->getObjectValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
