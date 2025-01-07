.class Lcom/hyphenate/chat/EMTranslator$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMTranslator$TranslationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/hyphenate/cloud/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMTranslator;

.field final synthetic val$callback:Lcom/hyphenate/chat/EMTranslator$TranslationCallback;

.field final synthetic val$languageCode:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMTranslator;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMTranslator$TranslationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslator$1;->this$0:Lcom/hyphenate/chat/EMTranslator;

    iput-object p2, p0, Lcom/hyphenate/chat/EMTranslator$1;->val$languageCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMTranslator$1;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMTranslator$1;->val$callback:Lcom/hyphenate/chat/EMTranslator$TranslationCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 4

    const-string p1, "/translate?api-version=3.0&to="

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMTranslator;->access$000()Lcom/hyphenate/chat/EMTranslateParams;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/chat/EMTranslateParams;->EndPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hyphenate/chat/EMTranslator$1;->val$languageCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Text"

    iget-object v3, p0, Lcom/hyphenate/chat/EMTranslator$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Ocp-Apim-Subscription-Key"

    invoke-static {}, Lcom/hyphenate/chat/EMTranslator;->access$000()Lcom/hyphenate/chat/EMTranslateParams;

    move-result-object v3

    iget-object v3, v3, Lcom/hyphenate/chat/EMTranslateParams;->SubscriptionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=UTF-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/hyphenate/cloud/EMHttpClient;->POST:Ljava/lang/String;

    invoke-static {p1, v1, v0, v2}, Lcom/hyphenate/cloud/HttpClientManager;->httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMTranslator$1;->doInBackground([Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/hyphenate/cloud/HttpResponse;)V
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_0
    iget v1, p1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/hyphenate/chat/EMTranslator$1;->this$0:Lcom/hyphenate/chat/EMTranslator;

    invoke-static {v1, p1}, Lcom/hyphenate/chat/EMTranslator;->access$100(Lcom/hyphenate/chat/EMTranslator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/hyphenate/chat/EMTranslator$1;->this$0:Lcom/hyphenate/chat/EMTranslator;

    invoke-virtual {v1, p1}, Lcom/hyphenate/chat/EMTranslator;->getTranslatedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/hyphenate/chat/EMTranslator$1;->val$callback:Lcom/hyphenate/chat/EMTranslator$TranslationCallback;

    invoke-interface {v1, p1, v0}, Lcom/hyphenate/chat/EMTranslator$TranslationCallback;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "EMTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hyphenate/chat/EMTranslator$1;->val$callback:Lcom/hyphenate/chat/EMTranslator$TranslationCallback;

    const-string v1, "Fail to translation"

    invoke-interface {p1, v0, v1}, Lcom/hyphenate/chat/EMTranslator$TranslationCallback;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/hyphenate/cloud/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMTranslator$1;->onPostExecute(Lcom/hyphenate/cloud/HttpResponse;)V

    return-void
.end method
