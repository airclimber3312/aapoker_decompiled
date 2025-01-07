.class final Lcom/tencent/bugly/proguard/eb$b;
.super Lcom/tencent/bugly/proguard/eb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/eb$a;-><init>(IB)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/eb$b;-><init>()V

    return-void
.end method


# virtual methods
.method final db()Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->do()Z

    move-result v0

    return v0
.end method
