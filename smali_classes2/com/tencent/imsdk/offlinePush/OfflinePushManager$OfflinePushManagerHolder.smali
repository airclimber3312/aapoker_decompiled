.class Lcom/tencent/imsdk/offlinePush/OfflinePushManager$OfflinePushManagerHolder;
.super Ljava/lang/Object;
.source "OfflinePushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/offlinePush/OfflinePushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfflinePushManagerHolder"
.end annotation


# static fields
.field private static final offlinePushManager:Lcom/tencent/imsdk/offlinePush/OfflinePushManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    invoke-direct {v0}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/offlinePush/OfflinePushManager$OfflinePushManagerHolder;->offlinePushManager:Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/offlinePush/OfflinePushManager;
    .locals 1

    .line 8
    sget-object v0, Lcom/tencent/imsdk/offlinePush/OfflinePushManager$OfflinePushManagerHolder;->offlinePushManager:Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    return-object v0
.end method
