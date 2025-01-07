.class Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$V2TIMConversationManagerImplHolder;
.super Ljava/lang/Object;
.source "V2TIMConversationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V2TIMConversationManagerImplHolder"
.end annotation


# static fields
.field private static final v2TIMConversationManagerImpl:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;-><init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;)V

    sput-object v0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$V2TIMConversationManagerImplHolder;->v2TIMConversationManagerImpl:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$V2TIMConversationManagerImplHolder;->v2TIMConversationManagerImpl:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    return-object v0
.end method
