.class public final synthetic Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

.field public final synthetic f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    iget-object v2, p0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->lambda$fetchUserInfoByUserId$2$com-hyphenate-wrapper-EMUserInfoManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;)V

    return-void
.end method
