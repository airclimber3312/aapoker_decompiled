.class public final Lshark/internal/KeyedWeakReferenceMirror$Companion;
.super Ljava/lang/Object;
.source "KeyedWeakReferenceMirror.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/KeyedWeakReferenceMirror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/internal/KeyedWeakReferenceMirror$Companion;",
        "",
        "()V",
        "UNKNOWN_LEGACY",
        "",
        "fromInstance",
        "Lshark/internal/KeyedWeakReferenceMirror;",
        "weakRef",
        "Lshark/HeapObject$HeapInstance;",
        "heapDumpUptimeMillis",
        "",
        "(Lshark/HeapObject$HeapInstance;Ljava/lang/Long;)Lshark/internal/KeyedWeakReferenceMirror;",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lshark/internal/KeyedWeakReferenceMirror$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstance(Lshark/HeapObject$HeapInstance;Ljava/lang/Long;)Lshark/internal/KeyedWeakReferenceMirror;
    .locals 9

    const-string v0, "weakRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "watchUptimeMillis"

    invoke-virtual {p1, v0, v4}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v4}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v4

    invoke-virtual {v4}, Lshark/HeapValue;->getAsLong()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :cond_2
    move-object v7, v1

    :goto_0
    if-eqz p2, :cond_6

    const-string v1, "retainedUptimeMillis"

    .line 41
    invoke-virtual {p1, v0, v1}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v1

    invoke-virtual {v1}, Lshark/HeapValue;->getAsLong()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 40
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    goto :goto_1

    .line 42
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v1

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_6
    move-object v8, v1

    const-string p2, "key"

    .line 47
    invoke-virtual {p1, v0, p2}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p2}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object p2

    invoke-virtual {p2}, Lshark/HeapValue;->readAsJavaString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    const-string p2, "description"

    .line 50
    invoke-virtual {p1, v0, p2}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object p2

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    const-string p2, "name"

    .line 51
    invoke-virtual {p1, v0, p2}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object p2

    :goto_2
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lshark/HeapValue;->readAsJavaString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    goto :goto_3

    :cond_a
    const-string p2, "Unknown (legacy)"

    :goto_3
    move-object v6, p2

    .line 52
    new-instance p2, Lshark/internal/KeyedWeakReferenceMirror;

    const-string v0, "java.lang.ref.Reference"

    const-string v1, "referent"

    .line 55
    invoke-virtual {p1, v0, v1}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {p1}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object p1

    invoke-virtual {p1}, Lshark/HeapValue;->getHolder()Lshark/ValueHolder;

    move-result-object p1

    if-eqz p1, :cond_c

    move-object v4, p1

    check-cast v4, Lshark/ValueHolder$ReferenceHolder;

    move-object v3, p2

    .line 52
    invoke-direct/range {v3 .. v8}, Lshark/internal/KeyedWeakReferenceMirror;-><init>(Lshark/ValueHolder$ReferenceHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p2

    .line 55
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type shark.ValueHolder.ReferenceHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
