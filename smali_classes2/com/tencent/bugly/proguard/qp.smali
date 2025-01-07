.class public Lcom/tencent/bugly/proguard/qp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/qp$l;,
        Lcom/tencent/bugly/proguard/qp$c;,
        Lcom/tencent/bugly/proguard/qp$g;,
        Lcom/tencent/bugly/proguard/qp$j;,
        Lcom/tencent/bugly/proguard/qp$i;,
        Lcom/tencent/bugly/proguard/qp$m;,
        Lcom/tencent/bugly/proguard/qp$d;,
        Lcom/tencent/bugly/proguard/qp$a;,
        Lcom/tencent/bugly/proguard/qp$b;,
        Lcom/tencent/bugly/proguard/qp$n;,
        Lcom/tencent/bugly/proguard/qp$h;,
        Lcom/tencent/bugly/proguard/qp$e;,
        Lcom/tencent/bugly/proguard/qp$f;,
        Lcom/tencent/bugly/proguard/qp$k;
    }
.end annotation


# static fields
.field private static GC:Lcom/tencent/bugly/proguard/qp;


# instance fields
.field public final GD:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/bugly/proguard/qn;",
            ">;"
        }
    .end annotation
.end field

.field public final GE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/bugly/proguard/ql;",
            ">;"
        }
    .end annotation
.end field

.field private final GF:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/bugly/proguard/qm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qp;->GD:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/qp;->GE:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/tencent/bugly/proguard/qp;->GF:Landroid/util/SparseArray;

    new-instance v3, Lcom/tencent/bugly/proguard/qp$j;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/qp$j;-><init>()V

    const/16 v4, 0x68

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$n;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$n;-><init>()V

    const/16 v6, 0x66

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$a;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$a;-><init>()V

    const/16 v6, 0x65

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$b;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$b;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$d;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$d;-><init>()V

    const/16 v6, 0x67

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$m;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$m;-><init>()V

    const/16 v6, 0x6a

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$i;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$i;-><init>()V

    const/16 v6, 0x71

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$f;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$f;-><init>()V

    const/16 v6, 0x6c

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$k;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$k;-><init>()V

    const/16 v6, 0x6d

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$g;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$g;-><init>()V

    const/16 v6, 0x6e

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/tencent/bugly/proguard/qp$c;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/qp$c;-><init>()V

    const/16 v6, 0x70

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qp$e;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qp$e;-><init>()V

    const/16 v3, 0x6b

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qp$h;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qp$h;-><init>()V

    const/16 v3, 0xd6

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qp$l;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qp$l;-><init>()V

    const/16 v3, 0x6f

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/ip;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vR:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xcf

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/im;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vU:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd5

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/it;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vN:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xc9

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/ir;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vO:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xca

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/io;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vP:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xcb

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/iq;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vQ:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xcd

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/ik;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vS:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd2

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/ik;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vT:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/ik;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vV:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/in;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vW:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd3

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/il;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vX:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd4

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/bugly/proguard/iu;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vY:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd7

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->vZ:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd8

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/bugly/proguard/qo;

    const-class v1, Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;

    sget-object v3, Lcom/tencent/bugly/proguard/iv;->wa:Lcom/tencent/bugly/proguard/iw;

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/qo;-><init>(Ljava/lang/Class;Lcom/tencent/bugly/proguard/iw;)V

    const/16 v1, 0xd9

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static jd()Lcom/tencent/bugly/proguard/qp;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/qp;->GC:Lcom/tencent/bugly/proguard/qp;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/qp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/qp;->GC:Lcom/tencent/bugly/proguard/qp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/qp;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/qp;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/qp;->GC:Lcom/tencent/bugly/proguard/qp;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/qp;->GC:Lcom/tencent/bugly/proguard/qp;

    return-object v0
.end method


# virtual methods
.method public final M(I)Lcom/tencent/bugly/proguard/qm;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qp;->GF:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/qm;

    return-object p1
.end method
