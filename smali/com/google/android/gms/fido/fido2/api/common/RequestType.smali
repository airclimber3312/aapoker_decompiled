.class public final enum Lcom/google/android/gms/fido/fido2/api/common/RequestType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/RequestType$UnsupportedRequestTypeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/RequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum REGISTER:Lcom/google/android/gms/fido/fido2/api/common/RequestType;

.field public static final enum SIGN:Lcom/google/android/gms/fido/fido2/api/common/RequestType;

.field private static final synthetic zzhfq:[Lcom/google/android/gms/fido/fido2/api/common/RequestType;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    const-string v1, "fido2_register_request"

    const-string v2, "REGISTER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/fido/fido2/api/common/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/RequestType;->REGISTER:Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    const-string v2, "fido2_sign_request"

    const-string v4, "SIGN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/gms/fido/fido2/api/common/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/fido/fido2/api/common/RequestType;->SIGN:Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/google/android/gms/fido/fido2/api/common/RequestType;->zzhfq:[Lcom/google/android/gms/fido/fido2/api/common/RequestType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/RequestType;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/RequestType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/fido2/api/common/RequestType$UnsupportedRequestTypeException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/fido/fido2/api/common/RequestType;->values()[Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/google/android/gms/fido/fido2/api/common/RequestType;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/RequestType$UnsupportedRequestTypeException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/fido2/api/common/RequestType$UnsupportedRequestTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/RequestType;
    .locals 1

    const-class v0, Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/RequestType;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/RequestType;->zzhfq:[Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/RequestType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/RequestType;->mValue:Ljava/lang/String;

    return-object v0
.end method
