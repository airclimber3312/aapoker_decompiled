.class public final Lcom/tencent/bugly/proguard/pc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/pc$c;,
        Lcom/tencent/bugly/proguard/pc$b;,
        Lcom/tencent/bugly/proguard/pc$a;
    }
.end annotation


# static fields
.field private static final Eh:Lcom/tencent/bugly/proguard/ck;

.field private static Ei:J

.field private static El:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static En:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/pc$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final Eo:Ljava/lang/Object;


# instance fields
.field final Ej:Landroid/os/Handler;

.field private final Ek:Lcom/tencent/bugly/proguard/it;

.field private final Em:Lcom/tencent/bugly/proguard/pe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/ck;

    const-class v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/ck;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/tencent/bugly/proguard/pc;->Eh:Lcom/tencent/bugly/proguard/ck;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/bugly/proguard/pc;->Ei:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/pc;->En:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/pc;->Eo:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/tencent/bugly/proguard/it;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/pe;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/pe;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pc;->Em:Lcom/tencent/bugly/proguard/pe;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pc;->Ej:Landroid/os/Handler;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/pc;->Ek:Lcom/tencent/bugly/proguard/it;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/pc;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/pc;->Ej:Landroid/os/Handler;

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Lcom/tencent/bugly/proguard/it;)V
    .locals 4

    const-string v0, "RMonitor_MemoryLeak_LeakInspector"

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "leakObj is null"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/nf;->hn()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "startInspect has not valid dumper"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/pc;->Eh:Lcom/tencent/bugly/proguard/ck;

    const-class v2, Lcom/tencent/rmonitor/base/meta/InspectUUID;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/ck;->a(Ljava/lang/Class;)Lcom/tencent/bugly/proguard/ck$b;

    move-result-object v1

    check-cast v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-object v2, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v2, 0x6b

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ix;->w(I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "leakSampleLost for user"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v3, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ix;->x(I)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "leakSampleLost for event"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v3, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "can not report again"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/tencent/bugly/proguard/pc;->El:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;->weakObj:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;->uuid:Ljava/lang/String;

    const-string v0, "digest"

    iput-object v0, v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;->digest:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;->className:Ljava/lang/String;

    new-instance p0, Lcom/tencent/bugly/proguard/pc$b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/bugly/proguard/pe;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/pe;-><init>()V

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/tencent/bugly/proguard/pc$b;-><init>(Lcom/tencent/rmonitor/base/meta/InspectUUID;Landroid/os/Handler;Lcom/tencent/bugly/proguard/it;Lcom/tencent/bugly/proguard/pe;)V

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/proguard/by;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/pc;)Lcom/tencent/bugly/proguard/it;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/pc;->Ek:Lcom/tencent/bugly/proguard/it;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/pc;)Lcom/tencent/bugly/proguard/pe;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/pc;->Em:Lcom/tencent/bugly/proguard/pe;

    return-object p0
.end method

.method private static f(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/rmonitor/base/meta/InspectUUID;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/pc;->Eh:Lcom/tencent/bugly/proguard/ck;

    const-class v2, Lcom/tencent/rmonitor/base/meta/InspectUUID;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/ck;->a(Ljava/lang/Class;)Lcom/tencent/bugly/proguard/ck$b;

    move-result-object v1

    check-cast v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/tencent/bugly/proguard/pc;->El:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v2, v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;->weakObj:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;->uuid:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;->digest:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/rmonitor/base/meta/InspectUUID;->className:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method static synthetic io()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/pc;->En:Ljava/util/List;

    return-object v0
.end method

.method static synthetic ip()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/pc;->Eo:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic iq()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/bugly/proguard/pc;->Ei:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    sput-wide v0, Lcom/tencent/bugly/proguard/pc;->Ei:J

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic ir()Lcom/tencent/bugly/proguard/ck;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/pc;->Eh:Lcom/tencent/bugly/proguard/ck;

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pc;->Ek:Lcom/tencent/bugly/proguard/it;

    const-string v1, "RMonitor_MemoryLeak_LeakInspector"

    if-nez v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "Please init a listener first!"

    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v0, 0x6b

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->x(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "leakSampleLost"

    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v2, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "can not report again"

    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/pc;->f(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/rmonitor/base/meta/InspectUUID;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p2

    new-instance v0, Lcom/tencent/bugly/proguard/pc$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/proguard/pc$1;-><init>(Lcom/tencent/bugly/proguard/pc;Lcom/tencent/rmonitor/base/meta/InspectUUID;)V

    invoke-virtual {p2, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_3
    return-void
.end method
