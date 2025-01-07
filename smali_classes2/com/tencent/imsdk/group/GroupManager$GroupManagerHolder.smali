.class Lcom/tencent/imsdk/group/GroupManager$GroupManagerHolder;
.super Ljava/lang/Object;
.source "GroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/group/GroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupManagerHolder"
.end annotation


# static fields
.field private static final groupManager:Lcom/tencent/imsdk/group/GroupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/tencent/imsdk/group/GroupManager;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupManager;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/group/GroupManager$GroupManagerHolder;->groupManager:Lcom/tencent/imsdk/group/GroupManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/group/GroupManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/tencent/imsdk/group/GroupManager$GroupManagerHolder;->groupManager:Lcom/tencent/imsdk/group/GroupManager;

    return-object v0
.end method
