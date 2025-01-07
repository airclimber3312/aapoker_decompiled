.class public final Lcom/tencent/bugly/proguard/lf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic zI:Lcom/tencent/bugly/proguard/mh;

.field final synthetic zJ:I

.field final synthetic zK:Lcom/tencent/bugly/proguard/mn;

.field final synthetic zL:Lcom/tencent/bugly/proguard/lf;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/lf;Lcom/tencent/bugly/proguard/mh;ILcom/tencent/bugly/proguard/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/lf$1;->zL:Lcom/tencent/bugly/proguard/lf;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/lf$1;->zI:Lcom/tencent/bugly/proguard/mh;

    iput p3, p0, Lcom/tencent/bugly/proguard/lf$1;->zJ:I

    iput-object p4, p0, Lcom/tencent/bugly/proguard/lf$1;->zK:Lcom/tencent/bugly/proguard/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/tencent/bugly/proguard/lf$1;->zL:Lcom/tencent/bugly/proguard/lf;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/lf$1;->zI:Lcom/tencent/bugly/proguard/mh;

    iget v1, v1, Lcom/tencent/bugly/proguard/mh;->type:I

    iget v2, p0, Lcom/tencent/bugly/proguard/lf$1;->zJ:I

    iget-object v3, p0, Lcom/tencent/bugly/proguard/lf$1;->zK:Lcom/tencent/bugly/proguard/mn;

    new-instance v4, Lcom/tencent/bugly/proguard/lf$2;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/lf;->gT()Lcom/tencent/bugly/proguard/lg;

    move-result-object v5

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/tencent/bugly/proguard/lf$2;-><init>(Lcom/tencent/bugly/proguard/lf;Lcom/tencent/bugly/proguard/lk;II)V

    invoke-interface {v4}, Lcom/tencent/bugly/proguard/lk;->gQ()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/tencent/bugly/proguard/md;

    invoke-direct {v5, v1, v2}, Lcom/tencent/bugly/proguard/md;-><init>(II)V

    iput-object v0, v5, Lcom/tencent/bugly/proguard/md;->zV:Ljava/util/List;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/mn;->gZ()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    invoke-static {v6}, Lcom/tencent/bugly/proguard/lj;->E(I)[Lcom/tencent/bugly/proguard/mb;

    move-result-object v1

    array-length v7, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v1, v8

    invoke-static {v9, v5, v3}, Lcom/tencent/bugly/proguard/lj;->a(Lcom/tencent/bugly/proguard/mb;Lcom/tencent/bugly/proguard/md;Lcom/tencent/bugly/proguard/mn;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/mm;->a(ILcom/tencent/bugly/proguard/mo;)Lcom/tencent/bugly/proguard/mn;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/mn;->gZ()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/lj;->E(I)[Lcom/tencent/bugly/proguard/mb;

    move-result-object v1

    array-length v7, v1

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v8, v1, v2

    invoke-static {v8, v5, v3}, Lcom/tencent/bugly/proguard/lj;->a(Lcom/tencent/bugly/proguard/mb;Lcom/tencent/bugly/proguard/md;Lcom/tencent/bugly/proguard/mn;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gL()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/mm;->a(ILcom/tencent/bugly/proguard/mo;)Lcom/tencent/bugly/proguard/mn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x3

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/mm;->a(ILcom/tencent/bugly/proguard/mo;)Lcom/tencent/bugly/proguard/mn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v5}, Lcom/tencent/bugly/proguard/lk;->a(Lcom/tencent/bugly/proguard/md;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gN()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v6}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->nEnableLeakDetectThisTime(Z)Z

    :cond_3
    return-void
.end method
