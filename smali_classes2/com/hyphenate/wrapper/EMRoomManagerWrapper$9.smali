.class Lcom/hyphenate/wrapper/EMRoomManagerWrapper$9;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMRoomManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchChatRoomAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$9;->this$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 737
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$9;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 742
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringMapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$9;->updateObject(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 744
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$9;->updateObject(Ljava/lang/Object;)V

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$9;->updateObject(Ljava/lang/Object;)V

    .line 747
    throw p1
.end method
