.class public final synthetic Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

.field public final synthetic f$3:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;ILcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;->f$0:Ljava/util/Map;

    iput p2, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;->f$2:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iput-object p4, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;->f$3:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;->f$0:Ljava/util/Map;

    iget v1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;->f$1:I

    iget-object v2, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;->f$2:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v3, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;->f$3:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->lambda$setChatRoomAttributes$18(Ljava/util/Map;ILcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method
