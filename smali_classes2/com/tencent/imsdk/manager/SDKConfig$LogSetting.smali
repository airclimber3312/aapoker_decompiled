.class public Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/manager/SDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogSetting"
.end annotation


# instance fields
.field public enableConsoleLog:Z

.field public logFilePath:Ljava/lang/String;

.field public logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;->enableConsoleLog:Z

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;->logLevel:I

    const-string v0, ""

    .line 100
    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;->logFilePath:Ljava/lang/String;

    return-void
.end method
