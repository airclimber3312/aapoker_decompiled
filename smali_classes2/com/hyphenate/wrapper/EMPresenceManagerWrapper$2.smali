.class Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$2;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMPresenceManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->fetchSubscribedMembersWithPageNum(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/wrapper/callback/EMCommonValueCallback<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$2;->this$0:Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$2;->updateObject(Ljava/lang/Object;)V

    return-void
.end method
