.class Lcom/hyphenate/push/EMPushHelper$InstanceHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/push/EMPushHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static a:Lcom/hyphenate/push/EMPushHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hyphenate/push/EMPushHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hyphenate/push/EMPushHelper;-><init>(Lcom/hyphenate/push/EMPushHelper$1;)V

    sput-object v0, Lcom/hyphenate/push/EMPushHelper$InstanceHolder;->a:Lcom/hyphenate/push/EMPushHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
