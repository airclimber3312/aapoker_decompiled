.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$V2TIMManagerImplHolder;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V2TIMManagerImplHolder"
.end annotation


# static fields
.field private static final v2TIMManagerImpl:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$V2TIMManagerImplHolder;->v2TIMManagerImpl:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/v2/V2TIMManagerImpl;
    .locals 1

    .line 57
    sget-object v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$V2TIMManagerImplHolder;->v2TIMManagerImpl:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    return-object v0
.end method
