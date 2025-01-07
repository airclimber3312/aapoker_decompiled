.class public final Lcom/tencent/bugly/proguard/oz;
.super Ljava/lang/Object;


# instance fields
.field private final Ee:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/oz;->Ee:Ljava/util/HashMap;

    return-void
.end method

.method public static b(JJLjava/lang/String;)Lcom/tencent/bugly/proguard/bg;
    .locals 6

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "RMonitor_MemoryCeiling_Reporter"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v5, p1

    aput-object p4, v5, v1

    const-string p0, "onReport, memory: %d, threshold: %d, activity: %s"

    invoke-static {v3, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, p1

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
