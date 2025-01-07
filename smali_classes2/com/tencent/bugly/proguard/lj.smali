.class public final Lcom/tencent/bugly/proguard/lj;
.super Ljava/lang/Object;


# static fields
.field private static final zO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/tencent/bugly/proguard/mb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zP:[Lcom/tencent/bugly/proguard/ma;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/lj;->zO:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lcom/tencent/bugly/proguard/mb;

    new-instance v4, Lcom/tencent/bugly/proguard/ln;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/ln;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/tencent/bugly/proguard/lu;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/lu;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Lcom/tencent/bugly/proguard/ly;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/ly;-><init>()V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-instance v4, Lcom/tencent/bugly/proguard/lt;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/lt;-><init>()V

    const/4 v7, 0x3

    aput-object v4, v3, v7

    new-instance v4, Lcom/tencent/bugly/proguard/lo;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/lo;-><init>()V

    const/4 v8, 0x4

    aput-object v4, v3, v8

    new-instance v4, Lcom/tencent/bugly/proguard/lq;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/lq;-><init>()V

    const/4 v8, 0x5

    aput-object v4, v3, v8

    new-instance v4, Lcom/tencent/bugly/proguard/lr;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/lr;-><init>()V

    const/4 v8, 0x6

    aput-object v4, v3, v8

    new-instance v4, Lcom/tencent/bugly/proguard/lw;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/lw;-><init>()V

    const/4 v8, 0x7

    aput-object v4, v3, v8

    new-instance v4, Lcom/tencent/bugly/proguard/lv;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/lv;-><init>()V

    const/16 v8, 0x8

    aput-object v4, v3, v8

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Lcom/tencent/bugly/proguard/mb;

    new-instance v4, Lcom/tencent/bugly/proguard/ls;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/ls;-><init>()V

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v7, [Lcom/tencent/bugly/proguard/ma;

    new-instance v2, Lcom/tencent/bugly/proguard/lp;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/lp;-><init>()V

    aput-object v2, v0, v5

    new-instance v2, Lcom/tencent/bugly/proguard/lz;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/lz;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Lcom/tencent/bugly/proguard/lx;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/lx;-><init>()V

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/bugly/proguard/lj;->zP:[Lcom/tencent/bugly/proguard/ma;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static E(I)[Lcom/tencent/bugly/proguard/mb;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/lj;->zO:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/tencent/bugly/proguard/mb;

    return-object p0
.end method

.method public static a(Lcom/tencent/bugly/proguard/mb;Lcom/tencent/bugly/proguard/md;Lcom/tencent/bugly/proguard/mn;)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/tencent/bugly/proguard/mb;->a(Lcom/tencent/bugly/proguard/mn;)Lcom/tencent/bugly/proguard/mc;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/tencent/bugly/proguard/md;->zW:Ljava/util/Map;

    iget-object p2, p0, Lcom/tencent/bugly/proguard/mc;->zQ:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
