.class Lcom/tencent/bugly/proguard/pi$a;
.super Landroid/app/Instrumentation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic EI:Lcom/tencent/bugly/proguard/pi;


# direct methods
.method private constructor <init>(Lcom/tencent/bugly/proguard/pi;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pi$a;->EI:Lcom/tencent/bugly/proguard/pi;

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/bugly/proguard/pi;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pi$a;-><init>(Lcom/tencent/bugly/proguard/pi;)V

    return-void
.end method


# virtual methods
.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/pi;->ix()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pi$a;->EI:Lcom/tencent/bugly/proguard/pi;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/pi;->i(Landroid/app/Activity;)V

    return-void
.end method
