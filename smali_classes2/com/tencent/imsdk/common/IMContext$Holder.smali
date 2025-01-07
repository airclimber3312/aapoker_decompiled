.class Lcom/tencent/imsdk/common/IMContext$Holder;
.super Ljava/lang/Object;
.source "IMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/common/IMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static instance:Lcom/tencent/imsdk/common/IMContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/tencent/imsdk/common/IMContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/imsdk/common/IMContext;-><init>(Lcom/tencent/imsdk/common/IMContext$1;)V

    sput-object v0, Lcom/tencent/imsdk/common/IMContext$Holder;->instance:Lcom/tencent/imsdk/common/IMContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
