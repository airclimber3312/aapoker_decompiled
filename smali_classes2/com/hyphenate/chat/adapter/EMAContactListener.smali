.class public abstract Lcom/hyphenate/chat/adapter/EMAContactListener;
.super Lcom/hyphenate/chat/adapter/EMABase;

# interfaces
.implements Lcom/hyphenate/chat/adapter/EMAContactListenerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAContactListener;->nativeInit()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAContactListener;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method public onContactAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContactAgreed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContactDeleted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContactInvited(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContactRefused(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
