.class public final Lcom/tencent/bugly/proguard/ed;
.super Ljava/lang/Object;


# instance fields
.field public mx:Z

.field public my:Z

.field public mz:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ed;->mx:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ed;->my:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ed;->mz:Z

    return-void
.end method
