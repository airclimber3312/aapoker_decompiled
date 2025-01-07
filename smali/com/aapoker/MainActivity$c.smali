.class public Lcom/aapoker/MainActivity$c;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aapoker/MainActivity;->a([Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lcom/aapoker/MainActivity$g;

.field public final synthetic c:Lcom/aapoker/MainActivity;


# direct methods
.method public constructor <init>(Lcom/aapoker/MainActivity;[Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/MainActivity$c;->c:Lcom/aapoker/MainActivity;

    iput-object p2, p0, Lcom/aapoker/MainActivity$c;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/aapoker/MainActivity$c;->b:Lcom/aapoker/MainActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aapoker/MainActivity$c;->c:Lcom/aapoker/MainActivity;

    const-string v1, "onBillingServiceDisconnected"

    invoke-virtual {v0, v1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/aapoker/MainActivity$c;->c:Lcom/aapoker/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBillingSetupFinished:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " code:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/aapoker/MainActivity$c;->c:Lcom/aapoker/MainActivity;

    invoke-static {p1, v0}, Lcom/aapoker/MainActivity;->a(Lcom/aapoker/MainActivity;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/aapoker/MainActivity$c;->c:Lcom/aapoker/MainActivity;

    iget-object v0, p0, Lcom/aapoker/MainActivity$c;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aapoker/MainActivity$c;->b:Lcom/aapoker/MainActivity$g;

    invoke-static {p1, v0, v1}, Lcom/aapoker/MainActivity;->a(Lcom/aapoker/MainActivity;[Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V

    return-void
.end method
