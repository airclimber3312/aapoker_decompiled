.class Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;
.super Ljava/lang/Object;
.source "V2TIMGroupManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;->searchGroups(Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "Lcom/tencent/imsdk/group/GroupInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;->this$0:Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupInfo;",
            ">;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/group/GroupInfo;

    .line 161
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;-><init>()V

    .line 162
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
