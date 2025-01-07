.class Lcom/helpshift/Helpshift$5;
.super Ljava/lang/Object;
.source "Helpshift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/Helpshift;->handleProactiveLink(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hsContext:Lcom/helpshift/core/HSContext;

.field final synthetic val$proactiveLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/helpshift/core/HSContext;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/helpshift/Helpshift$5;->val$proactiveLink:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpshift/Helpshift$5;->val$hsContext:Lcom/helpshift/core/HSContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "chat"

    const-string v1, "Helpshift"

    const-string v2, "Starting SDK with proactive support action : "

    const-string v3, "Is proactive config empty? "

    const-string v4, "Collected local config for proactive: "

    .line 239
    :try_start_0
    iget-object v5, p0, Lcom/helpshift/Helpshift$5;->val$proactiveLink:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 240
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "helpshift.com"

    .line 242
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v0, "Incorrect host for proactive link, skipping!"

    .line 243
    invoke-static {v1, v0}, Lcom/helpshift/log/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v6, "payload"

    .line 247
    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 250
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "action"

    .line 251
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-static {v6}, Lcom/helpshift/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v0, "No action found in proactive link, skipping!"

    .line 254
    invoke-static {v1, v0}, Lcom/helpshift/log/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v8, "chatConfig"

    .line 258
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "meta"

    .line 259
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 261
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 263
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v10, "hcConfig"

    .line 264
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 267
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 268
    invoke-static {}, Lcom/helpshift/Helpshift;->access$000()Lcom/helpshift/proactive/HelpshiftProactiveAPIConfigCollector;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 269
    invoke-static {}, Lcom/helpshift/Helpshift;->access$000()Lcom/helpshift/proactive/HelpshiftProactiveAPIConfigCollector;

    move-result-object v5

    invoke-interface {v5}, Lcom/helpshift/proactive/HelpshiftProactiveAPIConfigCollector;->getAPIConfig()Ljava/util/Map;

    move-result-object v5

    .line 271
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/helpshift/log/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_3

    .line 273
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v5, v4

    .line 275
    :cond_3
    invoke-static {v5}, Lcom/helpshift/Helpshift;->access$100(Ljava/util/Map;)V

    .line 277
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 279
    invoke-static {v8}, Lcom/helpshift/util/JsonUtils;->isEmpty(Lorg/json/JSONObject;)Z

    move-result v5

    .line 281
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/helpshift/log/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    goto :goto_0

    .line 284
    :cond_4
    invoke-static {v4, v8}, Lcom/helpshift/proactive/ProactiveConfigMerge;->mergeProactiveConfig(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 286
    :goto_0
    invoke-static {v9}, Lcom/helpshift/util/JsonUtils;->isEmpty(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "outboundSupportMeta"

    .line 287
    invoke-virtual {v4, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/helpshift/util/JsonUtils;->parseConfigDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 292
    iget-object v4, p0, Lcom/helpshift/Helpshift$5;->val$hsContext:Lcom/helpshift/core/HSContext;

    iget-object v4, v4, Lcom/helpshift/core/HSContext;->context:Landroid/content/Context;

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/log/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "hc-section"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :sswitch_2
    const-string v0, "hc-faq"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_3
    const-string v0, "hc-app"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v7, -0x1

    :goto_2
    if-eqz v7, :cond_c

    if-eq v7, v9, :cond_b

    const-string v0, ""

    if-eq v7, v8, :cond_9

    if-eq v7, v5, :cond_7

    goto :goto_3

    .line 311
    :cond_7
    :try_start_1
    invoke-static {v10}, Lcom/helpshift/util/JsonUtils;->isEmpty(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "faqId"

    .line 312
    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_8
    invoke-static {v4, v0, v3, v9}, Lcom/helpshift/Helpshift;->access$500(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_3

    .line 305
    :cond_9
    invoke-static {v10}, Lcom/helpshift/util/JsonUtils;->isEmpty(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "faqSectionId"

    .line 306
    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_a
    invoke-static {v4, v0, v3, v9}, Lcom/helpshift/Helpshift;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_3

    .line 301
    :cond_b
    invoke-static {v4, v3, v9}, Lcom/helpshift/Helpshift;->access$300(Landroid/content/Context;Ljava/util/Map;Z)V

    goto :goto_3

    .line 297
    :cond_c
    invoke-static {v4, v3, v9}, Lcom/helpshift/Helpshift;->access$200(Landroid/content/Context;Ljava/util/Map;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 317
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error handling proactive link : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/helpshift/Helpshift$5;->val$proactiveLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/helpshift/log/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x48fef9b1 -> :sswitch_3
        -0x48fee8bc -> :sswitch_2
        0x2e9358 -> :sswitch_1
        0x4c514413 -> :sswitch_0
    .end sparse-switch
.end method
