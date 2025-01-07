.class public final synthetic Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMUserInfo;

.field public final synthetic f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMUserInfo;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/hyphenate/chat/EMUserInfo;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda1;->f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/hyphenate/chat/EMUserInfo;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda1;->f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-static {v0, v1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->lambda$updateOwnUserInfo$0(Lcom/hyphenate/chat/EMUserInfo;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method
