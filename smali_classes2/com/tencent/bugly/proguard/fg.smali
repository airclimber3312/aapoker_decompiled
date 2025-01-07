.class public final Lcom/tencent/bugly/proguard/fg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/fg$a;
    }
.end annotation


# static fields
.field private static qo:Lcom/tencent/bugly/proguard/fg$a;

.field private static qp:Lcom/tencent/bugly/proguard/fg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/fg$1;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fg$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/fg;->qo:Lcom/tencent/bugly/proguard/fg$a;

    sput-object v0, Lcom/tencent/bugly/proguard/fg;->qp:Lcom/tencent/bugly/proguard/fg$a;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/fg;->qp:Lcom/tencent/bugly/proguard/fg$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/bugly/proguard/fg$a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/fg;->qp:Lcom/tencent/bugly/proguard/fg$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/fg$a;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/fg;->qp:Lcom/tencent/bugly/proguard/fg$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/bugly/proguard/fg$a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/fg;->qp:Lcom/tencent/bugly/proguard/fg$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/bugly/proguard/fg$a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
