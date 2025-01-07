.class public Lcom/aapoker/BaseMainActivity$c;
.super Ljava/lang/Object;
.source "BaseMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aapoker/BaseMainActivity;->RequstProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/aapoker/BaseMainActivity;


# direct methods
.method public constructor <init>(Lcom/aapoker/BaseMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/BaseMainActivity$c;->b:Lcom/aapoker/BaseMainActivity;

    iput-object p2, p0, Lcom/aapoker/BaseMainActivity$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/aapoker/BaseMainActivity$c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "productIds"

    .line 2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/aapoker/BaseMainActivity$c;->b:Lcom/aapoker/BaseMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RequstProduct\u6570\u636e\u4f20\u8f93\u9519\u8bef\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/aapoker/BaseMainActivity$c;->b:Lcom/aapoker/BaseMainActivity;

    invoke-virtual {v1, v0}, Lcom/aapoker/BaseMainActivity;->a([Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/aapoker/BaseMainActivity$c;->b:Lcom/aapoker/BaseMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6570\u636e\u89e3\u6790\u9519\u8bef\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aapoker/BaseMainActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aapoker/BaseMainActivity;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
