.class public Lcom/tykj/nativelib/SendDataModel;
.super Ljava/lang/Object;
.source "SendDataModel.java"


# instance fields
.field public channelId:I

.field public device:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public platform:I

.field public riskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
