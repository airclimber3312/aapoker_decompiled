.class Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$V2TIMOfflinePushManagerImplHolder;
.super Ljava/lang/Object;
.source "V2TIMOfflinePushManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V2TIMOfflinePushManagerImplHolder"
.end annotation


# static fields
.field private static final v2TIMOfflinePushManagerImpl:Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$V2TIMOfflinePushManagerImplHolder;->v2TIMOfflinePushManagerImpl:Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;
    .locals 1

    .line 12
    sget-object v0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$V2TIMOfflinePushManagerImplHolder;->v2TIMOfflinePushManagerImpl:Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;

    return-object v0
.end method
