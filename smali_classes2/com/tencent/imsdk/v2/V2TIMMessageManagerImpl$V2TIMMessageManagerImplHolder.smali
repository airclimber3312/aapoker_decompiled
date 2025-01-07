.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$V2TIMMessageManagerImplHolder;
.super Ljava/lang/Object;
.source "V2TIMMessageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V2TIMMessageManagerImplHolder"
.end annotation


# static fields
.field private static final v2TIMMessageManagerImpl:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;)V

    sput-object v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$V2TIMMessageManagerImplHolder;->v2TIMMessageManagerImpl:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;
    .locals 1

    .line 58
    sget-object v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$V2TIMMessageManagerImplHolder;->v2TIMMessageManagerImpl:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    return-object v0
.end method
