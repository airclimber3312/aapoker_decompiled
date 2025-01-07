.class public Lcom/tencent/bugly/proguard/li;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/lk;


# instance fields
.field private final zN:Lcom/tencent/bugly/proguard/lk;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/lk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/li;->zN:Lcom/tencent/bugly/proguard/lk;

    return-void
.end method


# virtual methods
.method public final D(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/li;->zN:Lcom/tencent/bugly/proguard/lk;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/lk;->D(I)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/mn;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/li;->zN:Lcom/tencent/bugly/proguard/lk;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/bugly/proguard/lk;->a(ILcom/tencent/bugly/proguard/mn;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/md;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/li;->zN:Lcom/tencent/bugly/proguard/lk;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/lk;->a(Lcom/tencent/bugly/proguard/md;)V

    :cond_0
    return-void
.end method

.method public final gQ()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/li;->zN:Lcom/tencent/bugly/proguard/lk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/lk;->gQ()V

    :cond_0
    return-void
.end method
