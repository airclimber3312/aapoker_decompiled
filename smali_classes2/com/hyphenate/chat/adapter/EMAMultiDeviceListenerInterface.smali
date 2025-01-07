.class public interface abstract Lcom/hyphenate/chat/adapter/EMAMultiDeviceListenerInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onContactEvent(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onConversationEvent(ILjava/lang/String;I)V
.end method

.method public abstract onGroupEvent(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRoamDeleteEvent(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract onThreadEvent(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
