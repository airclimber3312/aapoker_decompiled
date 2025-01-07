.class Lcom/hyphenate/wrapper/EMContactManagerWrapper$3;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMContactManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMContactManagerWrapper;->fetchAllContactsFromServerByPage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/wrapper/callback/EMCommonValueCallback<",
        "Lcom/hyphenate/chat/EMCursorResult<",
        "Lcom/hyphenate/chat/EMContact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$3;->this$0:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/hyphenate/chat/EMCursorResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMContact;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 274
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMCursorResultHelper;->toJson(Lcom/hyphenate/chat/EMCursorResult;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$3;->updateObject(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 276
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$3;->updateObject(Ljava/lang/Object;)V

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$3;->updateObject(Ljava/lang/Object;)V

    .line 279
    throw p1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p1, Lcom/hyphenate/chat/EMCursorResult;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$3;->onSuccess(Lcom/hyphenate/chat/EMCursorResult;)V

    return-void
.end method
