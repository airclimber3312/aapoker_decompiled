.class Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$V2TIMFriendshipManagerImplHolder;
.super Ljava/lang/Object;
.source "V2TIMFriendshipManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V2TIMFriendshipManagerImplHolder"
.end annotation


# static fields
.field private static final v2TIMFriendshipManagerImpl:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$1;)V

    sput-object v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$V2TIMFriendshipManagerImplHolder;->v2TIMFriendshipManagerImpl:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;
    .locals 1

    .line 27
    sget-object v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$V2TIMFriendshipManagerImplHolder;->v2TIMFriendshipManagerImpl:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    return-object v0
.end method
