.class Lcom/hyphenate/chat/EMHeartBeatReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "EMHeartBeatReceiver"


# instance fields
.field smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMHeartBeatReceiver;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "EMHeartBeatReceiver"

    const-string p2, "onReceive EMHeartBeatReceiver"

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    new-instance p2, Lcom/hyphenate/chat/EMHeartBeatReceiver$1;

    invoke-direct {p2, p0}, Lcom/hyphenate/chat/EMHeartBeatReceiver$1;-><init>(Lcom/hyphenate/chat/EMHeartBeatReceiver;)V

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
