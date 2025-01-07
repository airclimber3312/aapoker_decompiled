.class public final Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzhek:[B

.field private zzhel:[B

.field private zzhem:[B

.field private zzhen:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;
    .locals 5

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;->zzhek:[B

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;->zzhel:[B

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;->zzhem:[B

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;->zzhen:[B

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;-><init>([B[B[B[B)V

    return-object v0
.end method

.method public final setAuthenticatorData([B)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;->zzhem:[B

    return-object p0
.end method

.method public final setClientDataJSON([B)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;->zzhel:[B

    return-object p0
.end method

.method public final setKeyHandle([B)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;->zzhek:[B

    return-object p0
.end method

.method public final setSignature([B)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse$Builder;->zzhen:[B

    return-object p0
.end method
