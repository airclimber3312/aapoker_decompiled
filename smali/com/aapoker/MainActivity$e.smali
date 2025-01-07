.class public Lcom/aapoker/MainActivity$e;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aapoker/MainActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/aapoker/MainActivity;


# direct methods
.method public constructor <init>(Lcom/aapoker/MainActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/MainActivity$e;->d:Lcom/aapoker/MainActivity;

    iput-object p2, p0, Lcom/aapoker/MainActivity$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/aapoker/MainActivity$e;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/aapoker/MainActivity$e;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aapoker/MainActivity$e;->d:Lcom/aapoker/MainActivity;

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
    iget-object v1, p0, Lcom/aapoker/MainActivity$e;->d:Lcom/aapoker/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBillingSetupFinished:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " code:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/aapoker/MainActivity$e;->d:Lcom/aapoker/MainActivity;

    invoke-static {p1, v0}, Lcom/aapoker/MainActivity;->a(Lcom/aapoker/MainActivity;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/aapoker/MainActivity$e;->d:Lcom/aapoker/MainActivity;

    iget-object v0, p0, Lcom/aapoker/MainActivity$e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/aapoker/MainActivity$e;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/aapoker/MainActivity$e;->c:Z

    invoke-static {p1, v0, v1, v2}, Lcom/aapoker/MainActivity;->a(Lcom/aapoker/MainActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
