.class public final enum Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum BAD_REQUEST:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final enum CONFIGURATION_UNSUPPORTED:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DEVICE_INELIGIBLE:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final enum OK:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final enum OTHER_ERROR:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TIMEOUT:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field private static final synthetic zzhgh:[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;


# instance fields
.field private final zzhey:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->OK:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v1, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v3, "OTHER_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->OTHER_ERROR:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v3, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v5, "BAD_REQUEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->BAD_REQUEST:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v5, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v7, "CONFIGURATION_UNSUPPORTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->CONFIGURATION_UNSUPPORTED:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v7, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v9, "DEVICE_INELIGIBLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->DEVICE_INELIGIBLE:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v9, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v11, "TIMEOUT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->TIMEOUT:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzhgh:[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v0, "ErrorCode"

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/fido/u2f/api/common/zze;

    invoke-direct {v0}, Lcom/google/android/gms/fido/u2f/api/common/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzhey:I

    return-void
.end method

.method public static toErrorCode(I)Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->values()[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v5, v4, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzhey:I

    if-ne p0, v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Unsupported error code: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->OTHER_ERROR:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
    .locals 1

    const-class v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzhgh:[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzhey:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzhey:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
