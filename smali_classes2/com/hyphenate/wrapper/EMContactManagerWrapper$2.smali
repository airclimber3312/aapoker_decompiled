.class Lcom/hyphenate/wrapper/EMContactManagerWrapper$2;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMContactManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMContactManagerWrapper;->fetchAllContactsFromServer(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/wrapper/callback/EMCommonValueCallback<",
        "Ljava/util/List<",
        "Lcom/hyphenate/chat/EMContact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$2;->this$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMContact;",
            ">;)V"
        }
    .end annotation

    .line 249
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 251
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMContact;

    .line 252
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMContactHelper;->toJson(Lcom/hyphenate/chat/EMContact;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 255
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$2;->updateObject(Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$2;->updateObject(Ljava/lang/Object;)V

    .line 258
    throw p1
.end method
