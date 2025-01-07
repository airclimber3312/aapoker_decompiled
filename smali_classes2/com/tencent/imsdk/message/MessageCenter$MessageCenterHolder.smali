.class Lcom/tencent/imsdk/message/MessageCenter$MessageCenterHolder;
.super Ljava/lang/Object;
.source "MessageCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/message/MessageCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageCenterHolder"
.end annotation


# static fields
.field private static final messageCenter:Lcom/tencent/imsdk/message/MessageCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/tencent/imsdk/message/MessageCenter;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/MessageCenter;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/message/MessageCenter$MessageCenterHolder;->messageCenter:Lcom/tencent/imsdk/message/MessageCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/message/MessageCenter;
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/imsdk/message/MessageCenter$MessageCenterHolder;->messageCenter:Lcom/tencent/imsdk/message/MessageCenter;

    return-object v0
.end method
