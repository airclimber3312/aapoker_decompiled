.class public Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/proxy/LocalAccessPointConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogUploadServerInfo"
.end annotation


# instance fields
.field public serverDomain:Ljava/lang/String;

.field public serverHttps:Z

.field public serverPath:Ljava/lang/String;

.field public serverPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverDomain:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverPort:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverHttps:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "domain",
            "path",
            "port",
            "https"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverDomain:Ljava/lang/String;

    iput-object p2, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverPath:Ljava/lang/String;

    iput p3, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverPort:I

    iput-boolean p4, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverHttps:Z

    return-void
.end method


# virtual methods
.method public getServerDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getServerHttps()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverHttps:Z

    return v0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/proxy/LocalAccessPointConfiguration$LogUploadServerInfo;->serverPort:I

    return v0
.end method
