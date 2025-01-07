.class Lcom/tencent/imsdk/relationship/RelationshipManager$RelationshipManagerHolder;
.super Ljava/lang/Object;
.source "RelationshipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/relationship/RelationshipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelationshipManagerHolder"
.end annotation


# static fields
.field private static final relationshipManager:Lcom/tencent/imsdk/relationship/RelationshipManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/tencent/imsdk/relationship/RelationshipManager;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/RelationshipManager;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/relationship/RelationshipManager$RelationshipManagerHolder;->relationshipManager:Lcom/tencent/imsdk/relationship/RelationshipManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/relationship/RelationshipManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/tencent/imsdk/relationship/RelationshipManager$RelationshipManagerHolder;->relationshipManager:Lcom/tencent/imsdk/relationship/RelationshipManager;

    return-object v0
.end method
