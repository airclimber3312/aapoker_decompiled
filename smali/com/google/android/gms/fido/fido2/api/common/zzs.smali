.class final Lcom/google/android/gms/fido/fido2/api/common/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzk(Landroid/os/Parcel;)Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;->toTokenBindingIdValueType(I)Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$UnsupportedTokenBindingIdValueTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/zzs;->zzk(Landroid/os/Parcel;)Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    return-object p1
.end method
