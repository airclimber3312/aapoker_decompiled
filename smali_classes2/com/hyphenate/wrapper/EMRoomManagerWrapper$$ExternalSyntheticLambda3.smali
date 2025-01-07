.class public final synthetic Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$4:I

    iput-object p6, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$6:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$4:I

    iget-object v5, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$5:Ljava/util/List;

    iget-object v6, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;->f$6:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->lambda$createChatRoom$2$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method
