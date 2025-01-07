.class public Lcom/tencent/imsdk/common/IMContext;
.super Ljava/lang/Object;
.source "IMContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/common/IMContext$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IMContext"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/imsdk/common/IMContext;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/imsdk/common/IMContext$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/tencent/imsdk/common/IMContext;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/imsdk/common/IMContext;
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/imsdk/common/IMContext$Holder;->instance:Lcom/tencent/imsdk/common/IMContext;

    return-object v0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/imsdk/common/IMContext;->mContext:Landroid/content/Context;

    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMContext;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
