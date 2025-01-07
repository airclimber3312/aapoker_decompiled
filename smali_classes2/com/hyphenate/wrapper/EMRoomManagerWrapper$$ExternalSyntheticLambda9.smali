.class public final synthetic Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/hyphenate/EMResultCallBack;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

.field public final synthetic f$1:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

.field public final synthetic f$2:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;->f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;->f$1:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;->f$2:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;->f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;->f$1:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v2, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;->f$2:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->lambda$removeChatRoomAttributes$21$com-hyphenate-wrapper-EMRoomManagerWrapper(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;ILjava/util/Map;)V

    return-void
.end method
