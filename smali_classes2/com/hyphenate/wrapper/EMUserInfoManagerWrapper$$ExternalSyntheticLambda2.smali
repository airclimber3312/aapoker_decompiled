.class public final synthetic Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

.field public final synthetic f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;->f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;->f$3:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;->f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    iget-object v2, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;->f$3:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->lambda$fetchUserInfoByIdWithType$3$com-hyphenate-wrapper-EMUserInfoManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;)V

    return-void
.end method
