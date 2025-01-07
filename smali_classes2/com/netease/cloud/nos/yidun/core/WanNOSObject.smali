.class public Lcom/netease/cloud/nos/yidun/core/WanNOSObject;
.super Ljava/lang/Object;
.source "WanNOSObject.java"


# instance fields
.field private contentMD5:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private nosBucketName:Ljava/lang/String;

.field private nosObjectName:Ljava/lang/String;

.field private uploadToken:Ljava/lang/String;

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->uploadToken:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->nosBucketName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->nosObjectName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->contentMD5:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->userMetadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getContentMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->contentMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getNosBucketName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->nosBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getNosObjectName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->nosObjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->uploadToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->userMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->contentMD5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setNosBucketName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->nosBucketName:Ljava/lang/String;

    return-void
.end method

.method public setNosObjectName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->nosObjectName:Ljava/lang/String;

    return-void
.end method

.method public setUploadToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->uploadToken:Ljava/lang/String;

    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->userMetadata:Ljava/util/Map;

    return-void
.end method
