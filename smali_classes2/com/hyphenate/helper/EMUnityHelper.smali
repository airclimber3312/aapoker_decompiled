.class public Lcom/hyphenate/helper/EMUnityHelper;
.super Ljava/lang/Object;
.source "EMUnityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->context:Landroid/content/Context;

    return-void
.end method
