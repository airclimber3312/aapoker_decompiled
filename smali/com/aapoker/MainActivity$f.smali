.class public Lcom/aapoker/MainActivity$f;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/aapoker/MainActivity$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aapoker/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/aapoker/MainActivity;


# direct methods
.method public constructor <init>(Lcom/aapoker/MainActivity;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/MainActivity$f;->d:Lcom/aapoker/MainActivity;

    iput-object p2, p0, Lcom/aapoker/MainActivity$f;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/aapoker/MainActivity$f;->b:Z

    iput-object p4, p0, Lcom/aapoker/MainActivity$f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/aapoker/MainActivity$f;->d:Lcom/aapoker/MainActivity;

    invoke-static {v0}, Lcom/aapoker/MainActivity;->a(Lcom/aapoker/MainActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/aapoker/MainActivity$f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 2
    iget-object v1, p0, Lcom/aapoker/MainActivity$f;->d:Lcom/aapoker/MainActivity;

    iget-object v2, p0, Lcom/aapoker/MainActivity$f;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/aapoker/MainActivity$f;->b:Z

    iget-object v4, p0, Lcom/aapoker/MainActivity$f;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/aapoker/MainActivity;->a(Lcom/aapoker/MainActivity;Ljava/lang/String;ZLcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    return-void
.end method
