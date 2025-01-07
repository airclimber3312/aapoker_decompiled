.class Lcom/tencent/imsdk/manager/BaseManager$BaseManagerHolder;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/manager/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseManagerHolder"
.end annotation


# static fields
.field private static final baseManager:Lcom/tencent/imsdk/manager/BaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/tencent/imsdk/manager/BaseManager;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/BaseManager;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/manager/BaseManager$BaseManagerHolder;->baseManager:Lcom/tencent/imsdk/manager/BaseManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/manager/BaseManager;
    .locals 1

    .line 87
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager$BaseManagerHolder;->baseManager:Lcom/tencent/imsdk/manager/BaseManager;

    return-object v0
.end method
