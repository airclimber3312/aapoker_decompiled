.class public final synthetic Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda12;->f$0:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda12;->f$0:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->lambda$onTestGroupMessageRead$13(Lorg/json/JSONArray;)V

    return-void
.end method
