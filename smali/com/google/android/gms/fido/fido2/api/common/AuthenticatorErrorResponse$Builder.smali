.class public final Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mErrorMessage:Ljava/lang/String;

.field private zzhep:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;
    .locals 3

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse$Builder;->zzhep:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    invoke-virtual {v1}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse$Builder;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public final setErrorCode(Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse$Builder;->zzhep:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    return-object p0
.end method

.method public final setErrorMessage(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse$Builder;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method
