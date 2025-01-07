.class public Lcom/aapoker/MainActivity$d;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aapoker/MainActivity;->b([Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/aapoker/MainActivity$g;

.field public final synthetic b:Lcom/aapoker/MainActivity;


# direct methods
.method public constructor <init>(Lcom/aapoker/MainActivity;Lcom/aapoker/MainActivity$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/MainActivity$d;->b:Lcom/aapoker/MainActivity;

    iput-object p2, p0, Lcom/aapoker/MainActivity$d;->a:Lcom/aapoker/MainActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/aapoker/MainActivity$d;->b:Lcom/aapoker/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSkuDetailsResponse:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aapoker/MainActivity$d;->b:Lcom/aapoker/MainActivity;

    invoke-static {v3, v0}, Lcom/aapoker/MainActivity;->a(Lcom/aapoker/MainActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 9
    iget-object p2, p0, Lcom/aapoker/MainActivity$d;->b:Lcom/aapoker/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to query inventory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/aapoker/BaseMainActivity;->d(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/aapoker/MainActivity$d;->b:Lcom/aapoker/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/aapoker/MainActivity$d;->b:Lcom/aapoker/MainActivity;

    invoke-static {p1, p2}, Lcom/aapoker/MainActivity;->a(Lcom/aapoker/MainActivity;Ljava/util/List;)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/aapoker/MainActivity$d;->a:Lcom/aapoker/MainActivity$g;

    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p1}, Lcom/aapoker/MainActivity$g;->a()V

    :cond_1
    return-void
.end method
