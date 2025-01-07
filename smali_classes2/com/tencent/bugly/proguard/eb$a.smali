.class abstract Lcom/tencent/bugly/proguard/eb$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private final lJ:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/bugly/proguard/eb$a;->lJ:I

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/eb$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method abstract db()Z
.end method

.method final k(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/eb$a;->lJ:I

    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
