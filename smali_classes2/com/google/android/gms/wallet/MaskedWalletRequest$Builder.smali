.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/MaskedWalletRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private synthetic zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/zzy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    return-void
.end method


# virtual methods
.method public final addAllowedCardNetwork(I)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmt:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmt:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmt:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAllowedCardNetworks(Ljava/util/Collection;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmt:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmt:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p0
.end method

.method public final addAllowedCountrySpecificationForShipping(Lcom/google/android/gms/identity/intents/model/CountrySpecification;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmr:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmr:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAllowedCountrySpecificationsForShipping(Ljava/util/Collection;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmr:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmr:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p0
.end method

.method public final build()Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object v0
.end method

.method public final setAllowDebitCard(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmq:Z

    return-object p0
.end method

.method public final setAllowPrepaidCard(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmp:Z

    return-object p0
.end method

.method public final setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlkn:Lcom/google/android/gms/wallet/Cart;

    return-object p0
.end method

.method public final setCountryCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzcyf:Ljava/lang/String;

    return-object p0
.end method

.method public final setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlju:Ljava/lang/String;

    return-object p0
.end method

.method public final setEstimatedTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmk:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsBillingAgreement(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmn:Z

    return-object p0
.end method

.method public final setMerchantName(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlml:Ljava/lang/String;

    return-object p0
.end method

.method public final setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlkd:Ljava/lang/String;

    return-object p0
.end method

.method public final setPaymentMethodTokenizationParameters(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlms:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    return-object p0
.end method

.method public final setPhoneNumberRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmh:Z

    return-object p0
.end method

.method public final setShippingAddressRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmi:Z

    return-object p0
.end method

.method public final setUseMinimalBillingAddress(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->zzlmu:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzlmj:Z

    return-object p0
.end method
