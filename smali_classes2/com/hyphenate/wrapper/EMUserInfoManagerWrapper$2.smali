.class Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMUserInfoManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->lambda$fetchUserInfoByIdWithType$3$com-hyphenate-wrapper-EMUserInfoManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/wrapper/callback/EMCommonValueCallback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/hyphenate/chat/EMUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;->this$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMUserInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;->this$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->generateMapFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;->updateObject(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 114
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;->updateObject(Ljava/lang/Object;)V

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;->updateObject(Ljava/lang/Object;)V

    .line 117
    throw p1
.end method
