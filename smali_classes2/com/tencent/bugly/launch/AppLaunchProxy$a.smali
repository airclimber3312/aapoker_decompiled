.class final Lcom/tencent/bugly/launch/AppLaunchProxy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/launch/AppLaunchProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final oo:Lcom/tencent/bugly/launch/AppLaunchProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/launch/AppLaunchProxy;

    invoke-direct {v0}, Lcom/tencent/bugly/launch/AppLaunchProxy;-><init>()V

    sput-object v0, Lcom/tencent/bugly/launch/AppLaunchProxy$a;->oo:Lcom/tencent/bugly/launch/AppLaunchProxy;

    return-void
.end method

.method static synthetic dS()Lcom/tencent/bugly/launch/AppLaunchProxy;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/launch/AppLaunchProxy$a;->oo:Lcom/tencent/bugly/launch/AppLaunchProxy;

    return-object v0
.end method
