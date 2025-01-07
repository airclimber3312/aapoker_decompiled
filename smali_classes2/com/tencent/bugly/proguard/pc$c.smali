.class final Lcom/tencent/bugly/proguard/pc$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final Ew:Lcom/tencent/rmonitor/base/meta/InspectUUID;

.field public final Ex:Lcom/tencent/bugly/proguard/it;

.field public final Ey:Lcom/tencent/bugly/proguard/pe;

.field public final Ez:J


# direct methods
.method public constructor <init>(Lcom/tencent/rmonitor/base/meta/InspectUUID;Lcom/tencent/bugly/proguard/it;JLcom/tencent/bugly/proguard/pe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pc$c;->Ew:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/pc$c;->Ex:Lcom/tencent/bugly/proguard/it;

    iput-wide p3, p0, Lcom/tencent/bugly/proguard/pc$c;->Ez:J

    iput-object p5, p0, Lcom/tencent/bugly/proguard/pc$c;->Ey:Lcom/tencent/bugly/proguard/pe;

    return-void
.end method
