.class public Lcom/hyphenate/util/EMLog;
.super Ljava/lang/Object;


# static fields
.field public static debugMode:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/hyphenate/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isSdkInited()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isSdkInited()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/hyphenate/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isSdkInited()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/hyphenate/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isSdkInited()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->logV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/hyphenate/util/EMLog;->debugMode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isSdkInited()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->logW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
