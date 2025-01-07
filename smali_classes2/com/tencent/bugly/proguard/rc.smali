.class public final Lcom/tencent/bugly/proguard/rc;
.super Ljava/lang/Object;


# instance fields
.field HN:J

.field HO:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/rc;->HN:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/rc;->HO:Z

    return-void
.end method
