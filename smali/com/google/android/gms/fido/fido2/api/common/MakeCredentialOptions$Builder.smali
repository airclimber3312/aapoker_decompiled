.class public final Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzgtd:Ljava/lang/Integer;

.field private zzhfa:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialEntity;

.field private zzhfb:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;

.field private zzhfc:[B

.field private zzhfd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;",
            ">;"
        }
    .end annotation
.end field

.field private zzhfe:Ljava/lang/Double;

.field private zzhff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private zzhfg:Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

.field private zzhfh:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;
    .locals 12

    new-instance v11, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfa:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialEntity;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfb:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfc:[B

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfd:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfe:Ljava/lang/Double;

    iget-object v6, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhff:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfg:Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

    iget-object v8, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzgtd:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfh:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialEntity;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;[BLjava/util/List;Ljava/lang/Double;Ljava/util/List;Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;)V

    return-object v11
.end method

.method public final setAuthenticatorSelection(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfg:Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

    return-object p0
.end method

.method public final setChallenge([B)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfc:[B

    return-object p0
.end method

.method public final setExcludeList(Ljava/util/List;)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;",
            ">;)",
            "Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhff:Ljava/util/List;

    return-object p0
.end method

.method public final setParameters(Ljava/util/List;)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;",
            ">;)",
            "Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfd:Ljava/util/List;

    return-object p0
.end method

.method public final setRequestId(Ljava/lang/Integer;)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzgtd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setRp(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialEntity;)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfa:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialEntity;

    return-object p0
.end method

.method public final setTimeoutSeconds(Ljava/lang/Double;)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfe:Ljava/lang/Double;

    return-object p0
.end method

.method public final setTokenBindingIdValue(Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfh:Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    return-object p0
.end method

.method public final setUser(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;)Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions$Builder;->zzhfb:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;

    return-object p0
.end method
