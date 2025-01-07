.class public final Lshark/HeapField;
.super Ljava/lang/Object;
.source "HeapField.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lshark/HeapField;",
        "",
        "declaringClass",
        "Lshark/HeapObject$HeapClass;",
        "name",
        "",
        "value",
        "Lshark/HeapValue;",
        "(Lshark/HeapObject$HeapClass;Ljava/lang/String;Lshark/HeapValue;)V",
        "getDeclaringClass",
        "()Lshark/HeapObject$HeapClass;",
        "getName",
        "()Ljava/lang/String;",
        "getValue",
        "()Lshark/HeapValue;",
        "valueAsClass",
        "getValueAsClass",
        "valueAsInstance",
        "Lshark/HeapObject$HeapInstance;",
        "getValueAsInstance",
        "()Lshark/HeapObject$HeapInstance;",
        "valueAsObjectArray",
        "Lshark/HeapObject$HeapObjectArray;",
        "getValueAsObjectArray",
        "()Lshark/HeapObject$HeapObjectArray;",
        "valueAsPrimitiveArray",
        "Lshark/HeapObject$HeapPrimitiveArray;",
        "getValueAsPrimitiveArray",
        "()Lshark/HeapObject$HeapPrimitiveArray;",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final declaringClass:Lshark/HeapObject$HeapClass;

.field private final name:Ljava/lang/String;

.field private final value:Lshark/HeapValue;


# direct methods
.method public constructor <init>(Lshark/HeapObject$HeapClass;Ljava/lang/String;Lshark/HeapValue;)V
    .locals 1

    const-string v0, "declaringClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HeapField;->declaringClass:Lshark/HeapObject$HeapClass;

    iput-object p2, p0, Lshark/HeapField;->name:Ljava/lang/String;

    iput-object p3, p0, Lshark/HeapField;->value:Lshark/HeapValue;

    return-void
.end method


# virtual methods
.method public final getDeclaringClass()Lshark/HeapObject$HeapClass;
    .locals 1

    .line 15
    iget-object v0, p0, Lshark/HeapField;->declaringClass:Lshark/HeapObject$HeapClass;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lshark/HeapField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Lshark/HeapValue;
    .locals 1

    .line 24
    iget-object v0, p0, Lshark/HeapField;->value:Lshark/HeapValue;

    return-object v0
.end method

.method public final getValueAsClass()Lshark/HeapObject$HeapClass;
    .locals 1

    .line 31
    iget-object v0, p0, Lshark/HeapField;->value:Lshark/HeapValue;

    invoke-virtual {v0}, Lshark/HeapValue;->getAsObject()Lshark/HeapObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lshark/HeapObject;->getAsClass()Lshark/HeapObject$HeapClass;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getValueAsInstance()Lshark/HeapObject$HeapInstance;
    .locals 1

    .line 37
    iget-object v0, p0, Lshark/HeapField;->value:Lshark/HeapValue;

    invoke-virtual {v0}, Lshark/HeapValue;->getAsObject()Lshark/HeapObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lshark/HeapObject;->getAsInstance()Lshark/HeapObject$HeapInstance;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getValueAsObjectArray()Lshark/HeapObject$HeapObjectArray;
    .locals 1

    .line 43
    iget-object v0, p0, Lshark/HeapField;->value:Lshark/HeapValue;

    invoke-virtual {v0}, Lshark/HeapValue;->getAsObject()Lshark/HeapObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lshark/HeapObject;->getAsObjectArray()Lshark/HeapObject$HeapObjectArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getValueAsPrimitiveArray()Lshark/HeapObject$HeapPrimitiveArray;
    .locals 1

    .line 50
    iget-object v0, p0, Lshark/HeapField;->value:Lshark/HeapValue;

    invoke-virtual {v0}, Lshark/HeapValue;->getAsObject()Lshark/HeapObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lshark/HeapObject;->getAsPrimitiveArray()Lshark/HeapObject$HeapPrimitiveArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
