.class Lcom/hyphenate/chat/EMTranslator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMTranslator$TranslationCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final mGetLanguagePath:Ljava/lang/String; = "/languages?api-version=3.0"

.field private static mParams:Lcom/hyphenate/chat/EMTranslateParams; = null

.field static final mTranslatePath:Ljava/lang/String; = "/translate?api-version=3.0"


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMTranslateParams;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/hyphenate/chat/EMTranslator;->mParams:Lcom/hyphenate/chat/EMTranslateParams;

    iget-object v0, p1, Lcom/hyphenate/chat/EMTranslateParams;->EndPoint:Ljava/lang/String;

    const-string v1, "/$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/hyphenate/chat/EMTranslateParams;->EndPoint:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/hyphenate/chat/EMTranslateParams;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMTranslator;->mParams:Lcom/hyphenate/chat/EMTranslateParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMTranslator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMTranslator;->getTranslationFromResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLanguageListFromResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMLanguage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "translation"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/hyphenate/chat/EMLanguage;

    invoke-direct {v4}, Lcom/hyphenate/chat/EMLanguage;-><init>()V

    iput-object v2, v4, Lcom/hyphenate/chat/EMLanguage;->LanguageCode:Ljava/lang/String;

    move-object v2, v3

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hyphenate/chat/EMLanguage;->LanguageName:Ljava/lang/String;

    move-object v2, v3

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "nativeName"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hyphenate/chat/EMLanguage;->LanguageLocalName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private getTranslationFromResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method getSupportedLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMLanguage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hyphenate/chat/EMTranslator;->mParams:Lcom/hyphenate/chat/EMTranslateParams;

    iget-object v1, v1, Lcom/hyphenate/chat/EMTranslateParams;->EndPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/languages?api-version=3.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, ""

    sget-object v4, Lcom/hyphenate/cloud/EMHttpClient;->GET:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/hyphenate/cloud/HttpClientManager;->httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object v0

    iget v2, v0, Lcom/hyphenate/cloud/HttpResponse;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMTranslator;->getLanguageListFromResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method getTranslatedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "translations"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method translate(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMTranslator$TranslationCallback;)V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMTranslator$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/hyphenate/chat/EMTranslator$1;-><init>(Lcom/hyphenate/chat/EMTranslator;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMTranslator$TranslationCallback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMTranslator$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
