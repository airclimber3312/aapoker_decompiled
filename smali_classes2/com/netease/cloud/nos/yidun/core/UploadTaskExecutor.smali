.class public Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
.super Ljava/lang/Object;
.source "UploadTaskExecutor.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private volatile task:Lcom/netease/cloud/nos/yidun/core/UploadTask;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/cloud/nos/yidun/core/UploadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/yidun/core/UploadTask;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/yidun/core/UploadTask;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/yidun/core/UploadTask;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->LOGTAG:Ljava/lang/String;

    const-string v2, "cancel async task exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public get()Lcom/netease/cloud/nos/yidun/core/CallRet;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/yidun/core/UploadTask;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/yidun/core/UploadTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cloud/nos/yidun/core/CallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->LOGTAG:Ljava/lang/String;

    const-string v2, "get async task exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isUpCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/yidun/core/UploadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/yidun/core/UploadTask;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->isUpCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTask(Lcom/netease/cloud/nos/yidun/core/UploadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/yidun/core/UploadTask;

    return-void
.end method
