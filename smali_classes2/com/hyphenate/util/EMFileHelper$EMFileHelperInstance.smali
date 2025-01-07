.class Lcom/hyphenate/util/EMFileHelper$EMFileHelperInstance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/util/EMFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EMFileHelperInstance"
.end annotation


# static fields
.field private static final instance:Lcom/hyphenate/util/EMFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hyphenate/util/EMFileHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hyphenate/util/EMFileHelper;-><init>(Lcom/hyphenate/util/EMFileHelper$1;)V

    sput-object v0, Lcom/hyphenate/util/EMFileHelper$EMFileHelperInstance;->instance:Lcom/hyphenate/util/EMFileHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/hyphenate/util/EMFileHelper;
    .locals 1

    sget-object v0, Lcom/hyphenate/util/EMFileHelper$EMFileHelperInstance;->instance:Lcom/hyphenate/util/EMFileHelper;

    return-object v0
.end method
