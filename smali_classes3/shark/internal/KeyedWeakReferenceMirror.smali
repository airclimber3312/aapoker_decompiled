.class public final Lshark/internal/KeyedWeakReferenceMirror;
.super Ljava/lang/Object;
.source "KeyedWeakReferenceMirror.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/internal/KeyedWeakReferenceMirror$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lshark/internal/KeyedWeakReferenceMirror;",
        "",
        "referent",
        "Lshark/ValueHolder$ReferenceHolder;",
        "key",
        "",
        "description",
        "watchDurationMillis",
        "",
        "retainedDurationMillis",
        "(Lshark/ValueHolder$ReferenceHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "hasReferent",
        "",
        "getHasReferent",
        "()Z",
        "isRetained",
        "getKey",
        "getReferent",
        "()Lshark/ValueHolder$ReferenceHolder;",
        "getRetainedDurationMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getWatchDurationMillis",
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
.field public static final Companion:Lshark/internal/KeyedWeakReferenceMirror$Companion;

.field private static final UNKNOWN_LEGACY:Ljava/lang/String; = "Unknown (legacy)"


# instance fields
.field private final description:Ljava/lang/String;

.field private final hasReferent:Z

.field private final isRetained:Z

.field private final key:Ljava/lang/String;

.field private final referent:Lshark/ValueHolder$ReferenceHolder;

.field private final retainedDurationMillis:Ljava/lang/Long;

.field private final watchDurationMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/internal/KeyedWeakReferenceMirror$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/internal/KeyedWeakReferenceMirror$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/internal/KeyedWeakReferenceMirror;->Companion:Lshark/internal/KeyedWeakReferenceMirror$Companion;

    return-void
.end method

.method public constructor <init>(Lshark/ValueHolder$ReferenceHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3

    const-string v0, "referent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/internal/KeyedWeakReferenceMirror;->referent:Lshark/ValueHolder$ReferenceHolder;

    iput-object p2, p0, Lshark/internal/KeyedWeakReferenceMirror;->key:Ljava/lang/String;

    iput-object p3, p0, Lshark/internal/KeyedWeakReferenceMirror;->description:Ljava/lang/String;

    iput-object p4, p0, Lshark/internal/KeyedWeakReferenceMirror;->watchDurationMillis:Ljava/lang/Long;

    iput-object p5, p0, Lshark/internal/KeyedWeakReferenceMirror;->retainedDurationMillis:Ljava/lang/Long;

    .line 18
    invoke-virtual {p1}, Lshark/ValueHolder$ReferenceHolder;->getValue()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p1, p3

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lshark/internal/KeyedWeakReferenceMirror;->hasReferent:Z

    if-eqz p5, :cond_3

    if-nez p5, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, -0x1

    cmp-long p5, p1, p3

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lshark/internal/KeyedWeakReferenceMirror;->isRetained:Z

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lshark/internal/KeyedWeakReferenceMirror;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasReferent()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lshark/internal/KeyedWeakReferenceMirror;->hasReferent:Z

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lshark/internal/KeyedWeakReferenceMirror;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferent()Lshark/ValueHolder$ReferenceHolder;
    .locals 1

    .line 8
    iget-object v0, p0, Lshark/internal/KeyedWeakReferenceMirror;->referent:Lshark/ValueHolder$ReferenceHolder;

    return-object v0
.end method

.method public final getRetainedDurationMillis()Ljava/lang/Long;
    .locals 1

    .line 15
    iget-object v0, p0, Lshark/internal/KeyedWeakReferenceMirror;->retainedDurationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getWatchDurationMillis()Ljava/lang/Long;
    .locals 1

    .line 13
    iget-object v0, p0, Lshark/internal/KeyedWeakReferenceMirror;->watchDurationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final isRetained()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lshark/internal/KeyedWeakReferenceMirror;->isRetained:Z

    return v0
.end method
