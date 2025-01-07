.class Lcom/tencent/imsdk/signaling/SignalingManager$SignalingManagerHolder;
.super Ljava/lang/Object;
.source "SignalingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/signaling/SignalingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignalingManagerHolder"
.end annotation


# static fields
.field private static final signalingManager:Lcom/tencent/imsdk/signaling/SignalingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/tencent/imsdk/signaling/SignalingManager;

    invoke-direct {v0}, Lcom/tencent/imsdk/signaling/SignalingManager;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/signaling/SignalingManager$SignalingManagerHolder;->signalingManager:Lcom/tencent/imsdk/signaling/SignalingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/signaling/SignalingManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/tencent/imsdk/signaling/SignalingManager$SignalingManagerHolder;->signalingManager:Lcom/tencent/imsdk/signaling/SignalingManager;

    return-object v0
.end method
