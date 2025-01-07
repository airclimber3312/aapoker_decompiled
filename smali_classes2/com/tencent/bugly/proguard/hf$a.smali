.class public final Lcom/tencent/bugly/proguard/hf$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public tP:F

.field public tT:F

.field public ue:Ljava/lang/String;

.field public uf:J

.field public ug:J

.field public uh:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hf$a;->ue:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/hf$a;->tP:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/tencent/bugly/proguard/hf$a;->tT:F

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hf$a;->uf:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hf$a;->ug:J

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hf$a;->uh:J

    return-void
.end method
