.class public final Lcom/tencent/bugly/proguard/jw;
.super Ljava/lang/Object;


# instance fields
.field public height:I

.field public iy:Ljava/lang/String;

.field public type:I

.field public width:I

.field public xy:J


# direct methods
.method public constructor <init>(II)V
    .locals 6

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/jw;-><init>(IIIJ)V

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/proguard/jw;-><init>(IIIJLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IIIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/bugly/proguard/jw;->type:I

    iput p2, p0, Lcom/tencent/bugly/proguard/jw;->width:I

    iput p3, p0, Lcom/tencent/bugly/proguard/jw;->height:I

    iput-wide p4, p0, Lcom/tencent/bugly/proguard/jw;->xy:J

    iput-object p6, p0, Lcom/tencent/bugly/proguard/jw;->iy:Ljava/lang/String;

    return-void
.end method
