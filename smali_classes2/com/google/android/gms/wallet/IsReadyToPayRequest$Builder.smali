.class public final Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/IsReadyToPayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private synthetic zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/wallet/zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;-><init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)V

    return-void
.end method


# virtual methods
.method public final addAllowedCardNetwork(I)Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzljo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzljo:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzljo:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAllowedCardNetworks(Ljava/util/Collection;)Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "allowedCardNetworks can\'t be null or empty. If you want the defaults, leave it unset."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzljo:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzljo:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzljo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addAllowedPaymentMethod(I)Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzlld:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzlld:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzlld:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAllowedPaymentMethods(Ljava/util/Collection;)Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "allowedPaymentMethods can\'t be null or empty. If you want the default, leave it unset."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzlld:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzlld:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzlld:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/wallet/IsReadyToPayRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    return-object v0
.end method

.method public final setExistingPaymentMethodRequired(Z)Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;->zzllf:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzlle:Z

    return-object p0
.end method
