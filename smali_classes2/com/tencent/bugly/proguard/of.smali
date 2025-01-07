.class public final Lcom/tencent/bugly/proguard/of;
.super Lcom/tencent/bugly/proguard/ck$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/of$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0002J\u0019\u0010\u000c\u001a\u00020\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0002\u0010\u0010J%\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0002\u0010\u0012J \u0010\u0013\u001a\u00020\n2\u0018\u0010\u0014\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u0008\u0012\u0004\u0012\u00020\n0\u0015J\u0008\u0010\u0016\u001a\u00020\nH\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/meta/StackQueue;",
        "Lcom/tencent/bugly/common/utils/RecyclablePool$Recyclable;",
        "()V",
        "curStackFrame",
        "Lcom/tencent/rmonitor/looper/meta/StackFrame;",
        "sliceIndex",
        "",
        "stackFrameQueue",
        "",
        "addStackFrameToQueue",
        "",
        "stackFrame",
        "addStackTrace",
        "stackTrace",
        "",
        "Ljava/lang/StackTraceElement;",
        "([Ljava/lang/StackTraceElement;)V",
        "buildNewFrame",
        "(I[Ljava/lang/StackTraceElement;)Lcom/tencent/rmonitor/looper/meta/StackFrame;",
        "dealStackTrace",
        "callback",
        "Lkotlin/Function1;",
        "reset",
        "resetCurStackFrame",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final CX:Lcom/tencent/bugly/proguard/od;

.field public static final Dc:Lcom/tencent/bugly/proguard/of$a;


# instance fields
.field public final CZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/oe;",
            ">;"
        }
    .end annotation
.end field

.field public Da:Lcom/tencent/bugly/proguard/oe;

.field private Db:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/of$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/of$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/of;->Dc:Lcom/tencent/bugly/proguard/of$a;

    new-instance v0, Lcom/tencent/bugly/proguard/od;

    const-class v1, Lcom/tencent/bugly/proguard/of;

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/od;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/tencent/bugly/proguard/of;->CX:Lcom/tencent/bugly/proguard/od;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ck$b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/of;->CZ:Ljava/util/List;

    return-void
.end method

.method private static b(I[Ljava/lang/StackTraceElement;)Lcom/tencent/bugly/proguard/oe;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/oe;->CY:Lcom/tencent/bugly/proguard/oe$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/oe$a;->hW()Lcom/tencent/bugly/proguard/oe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/bugly/proguard/oe;->a(I[Ljava/lang/StackTraceElement;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic hV()Lcom/tencent/bugly/proguard/od;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/of;->CX:Lcom/tencent/bugly/proguard/od;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/tencent/bugly/proguard/oe;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/proguard/oe;->CT:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/of;->CZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c([Ljava/lang/StackTraceElement;)V
    .locals 8

    const-string v0, "stackTrace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/of;->Da:Lcom/tencent/bugly/proguard/oe;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/tencent/bugly/proguard/of;->Db:I

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/of;->b(I[Ljava/lang/StackTraceElement;)Lcom/tencent/bugly/proguard/oe;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/of;->Da:Lcom/tencent/bugly/proguard/oe;

    goto :goto_3

    :cond_0
    const-string v2, "fromStack"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/bugly/proguard/oe;->CW:[Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    array-length v4, v2

    array-length v5, p1

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    aget-object v7, p1, v5

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v1

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    iget p1, v0, Lcom/tencent/bugly/proguard/oe;->CV:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/tencent/bugly/proguard/oe;->CV:I

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/of;->b(Lcom/tencent/bugly/proguard/oe;)V

    goto :goto_0

    :goto_3
    iget p1, p0, Lcom/tencent/bugly/proguard/of;->Db:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/bugly/proguard/of;->Db:I

    return-void
.end method

.method public final reset()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/of;->Da:Lcom/tencent/bugly/proguard/oe;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/oe;->CY:Lcom/tencent/bugly/proguard/oe$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/oe$a;->a(Lcom/tencent/bugly/proguard/oe;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/of;->Da:Lcom/tencent/bugly/proguard/oe;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/of;->CZ:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Lcom/tencent/bugly/proguard/oe;->CY:Lcom/tencent/bugly/proguard/oe$a;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/of;->CZ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/oe;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/oe$a;->a(Lcom/tencent/bugly/proguard/oe;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/of;->CZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/tencent/bugly/proguard/of;->Db:I

    return-void
.end method
