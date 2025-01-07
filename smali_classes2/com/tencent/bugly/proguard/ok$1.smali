.class final Lcom/tencent/bugly/proguard/ok$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ok;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ds:Lcom/tencent/bugly/proguard/nz;

.field final synthetic Dt:Ljava/util/ArrayList;

.field final synthetic Du:Lcom/tencent/bugly/proguard/ok;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ok;Lcom/tencent/bugly/proguard/nz;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ok$1;->Du:Lcom/tencent/bugly/proguard/ok;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/ok$1;->Dt:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ok$1;->Dt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/bugly/proguard/nz;->CM:I

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/nz;->CN:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/nz;->CK:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok$1;->Dt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok$1;->Dt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/jm;

    iget-wide v3, v3, Lcom/tencent/bugly/proguard/jm;->xd:J

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/nz;->CL:J

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ok$1;->Du:Lcom/tencent/bugly/proguard/ok;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ok$1;->Dt:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/ok;->a(Lcom/tencent/bugly/proguard/ok;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/ok$a;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "type"

    const-string v6, "normal"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "thread_name"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "thread_id"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/nz;->vE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "index"

    iget v6, v3, Lcom/tencent/bugly/proguard/ok$a;->CU:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "repeat_count"

    iget v6, v3, Lcom/tencent/bugly/proguard/ok$a;->repeatCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "timestamp"

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/ok$a;->nf:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "end_time"

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/ok$a;->Dv:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "call_stack"

    iget-object v3, v3, Lcom/tencent/bugly/proguard/ok$a;->Dw:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v2, "stacks"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    iput-object v0, v1, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok$1;->Du:Lcom/tencent/bugly/proguard/ok;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ok;->a(Lcom/tencent/bugly/proguard/ok;)Lcom/tencent/bugly/proguard/oc;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ok$1;->Ds:Lcom/tencent/bugly/proguard/nz;

    invoke-interface {v0, v1}, Lcom/tencent/bugly/proguard/oc;->a(Lcom/tencent/bugly/proguard/nz;)V

    return-void
.end method
