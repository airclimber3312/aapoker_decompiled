.class Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$V2TIMGroupManagerImplHolder;
.super Ljava/lang/Object;
.source "V2TIMGroupManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V2TIMGroupManagerImplHolder"
.end annotation


# static fields
.field private static final v2TIMGroupManagerImpl:Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$1;)V

    sput-object v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$V2TIMGroupManagerImplHolder;->v2TIMGroupManagerImpl:Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;
    .locals 1

    .line 42
    sget-object v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$V2TIMGroupManagerImplHolder;->v2TIMGroupManagerImpl:Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

    return-object v0
.end method
