.class public final Lshark/ReferencePattern$JavaLocalPattern;
.super Lshark/ReferencePattern;
.source "ReferencePattern.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/ReferencePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaLocalPattern"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/ReferencePattern$JavaLocalPattern$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lshark/ReferencePattern$JavaLocalPattern;",
        "Lshark/ReferencePattern;",
        "threadName",
        "",
        "(Ljava/lang/String;)V",
        "getThreadName",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "Companion",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/ReferencePattern$JavaLocalPattern$Companion;

.field private static final serialVersionUID:J = -0x7cb2b7a44baa78e6L


# instance fields
.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/ReferencePattern$JavaLocalPattern$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/ReferencePattern$JavaLocalPattern$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/ReferencePattern$JavaLocalPattern;->Companion:Lshark/ReferencePattern$JavaLocalPattern$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "threadName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lshark/ReferencePattern;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/ReferencePattern$JavaLocalPattern;->threadName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lshark/ReferencePattern$JavaLocalPattern;Ljava/lang/String;ILjava/lang/Object;)Lshark/ReferencePattern$JavaLocalPattern;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lshark/ReferencePattern$JavaLocalPattern;->threadName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lshark/ReferencePattern$JavaLocalPattern;->copy(Ljava/lang/String;)Lshark/ReferencePattern$JavaLocalPattern;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lshark/ReferencePattern$JavaLocalPattern;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lshark/ReferencePattern$JavaLocalPattern;
    .locals 1

    const-string v0, "threadName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lshark/ReferencePattern$JavaLocalPattern;

    invoke-direct {v0, p1}, Lshark/ReferencePattern$JavaLocalPattern;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/ReferencePattern$JavaLocalPattern;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/ReferencePattern$JavaLocalPattern;

    iget-object v0, p0, Lshark/ReferencePattern$JavaLocalPattern;->threadName:Ljava/lang/String;

    iget-object p1, p1, Lshark/ReferencePattern$JavaLocalPattern;->threadName:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getThreadName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lshark/ReferencePattern$JavaLocalPattern;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lshark/ReferencePattern$JavaLocalPattern;->threadName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local variable on thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lshark/ReferencePattern$JavaLocalPattern;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
