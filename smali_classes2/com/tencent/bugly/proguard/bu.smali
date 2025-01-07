.class public final Lcom/tencent/bugly/proguard/bu;
.super Lcom/tencent/bugly/proguard/bs;


# instance fields
.field public final dW:Lorg/json/JSONObject;

.field public dX:Lorg/json/JSONObject;

.field public final dr:Ljava/lang/String;

.field public final ds:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, ""

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/bs;-><init>(Ljava/net/URL;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/bu;->dX:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/bu;->dW:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "base_type"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "sub_type"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object v1, p1

    :catchall_1
    :goto_0
    move-object p2, p1

    move-object p1, v1

    goto :goto_1

    :cond_0
    move-object p2, p1

    :goto_1
    iput-object p1, p0, Lcom/tencent/bugly/proguard/bu;->dr:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/bu;->ds:Ljava/lang/String;

    return-void
.end method
