.class public final synthetic Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->lambda$onContactInvited$2(Lorg/json/JSONObject;)V

    return-void
.end method
