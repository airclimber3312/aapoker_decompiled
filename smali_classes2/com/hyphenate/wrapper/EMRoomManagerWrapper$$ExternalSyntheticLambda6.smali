.class public final synthetic Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$3:I

    iput-object p5, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$4:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$3:I

    iget-object v4, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;->f$4:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->lambda$fetchChatRoomMembers$6$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method
