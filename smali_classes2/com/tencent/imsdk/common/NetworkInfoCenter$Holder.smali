.class Lcom/tencent/imsdk/common/NetworkInfoCenter$Holder;
.super Ljava/lang/Object;
.source "NetworkInfoCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/common/NetworkInfoCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/tencent/imsdk/common/NetworkInfoCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;

    invoke-direct {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter$Holder;->instance:Lcom/tencent/imsdk/common/NetworkInfoCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
