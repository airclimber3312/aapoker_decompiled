.class public Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;
.super Ljava/lang/Object;
.source "CustomServerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/manager/CustomServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerAddress"
.end annotation


# instance fields
.field public ip:Ljava/lang/String;

.field public isIPv6:Z

.field public isQuic:Z

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->ip:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->port:I

    .line 16
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->isIPv6:Z

    .line 17
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->isQuic:Z

    return-void
.end method
