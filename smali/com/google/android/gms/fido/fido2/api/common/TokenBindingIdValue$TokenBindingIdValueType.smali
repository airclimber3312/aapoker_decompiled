.class public final enum Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenBindingIdValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum ABSENT:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OBJECT:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

.field public static final enum STRING:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

.field private static final synthetic zzhfv:[Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;


# instance fields
.field private final zzenu:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    const-string v1, "ABSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->ABSENT:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->STRING:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    new-instance v3, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    const-string v5, "OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->OBJECT:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->zzhfv:[Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->zzenu:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;
    .locals 1

    const-class v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->zzhfv:[Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->zzenu:I

    return p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue$TokenBindingIdValueType;->zzenu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
