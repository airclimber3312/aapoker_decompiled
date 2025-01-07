.class public final enum Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier$UnsupportedAlgorithmIdentifierException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ECDSA:Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

.field private static final synthetic zzhei:[Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    const-string v1, "ECDSA using P-256 curve and SHA-256"

    const-string v2, "ECDSA"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->ECDSA:Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->zzhei:[Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zza;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier$UnsupportedAlgorithmIdentifierException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->values()[Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier$UnsupportedAlgorithmIdentifierException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier$UnsupportedAlgorithmIdentifierException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;
    .locals 1

    const-class v0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->zzhei:[Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/AlgorithmIdentifier;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
