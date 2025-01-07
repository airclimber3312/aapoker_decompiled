.class final Lshark/HeapObject$HeapInstance$readFields$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HeapObject.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HeapObject$HeapInstance$readFields$1;->invoke(Lshark/HeapObject$HeapClass;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "Lshark/HeapField;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lshark/HeapField;",
        "fieldRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $heapClass:Lshark/HeapObject$HeapClass;

.field final synthetic this$0:Lshark/HeapObject$HeapInstance$readFields$1;


# direct methods
.method constructor <init>(Lshark/HeapObject$HeapInstance$readFields$1;Lshark/HeapObject$HeapClass;)V
    .locals 0

    iput-object p1, p0, Lshark/HeapObject$HeapInstance$readFields$1$1;->this$0:Lshark/HeapObject$HeapInstance$readFields$1;

    iput-object p2, p0, Lshark/HeapObject$HeapInstance$readFields$1$1;->$heapClass:Lshark/HeapObject$HeapClass;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 315
    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    invoke-virtual {p0, p1}, Lshark/HeapObject$HeapInstance$readFields$1$1;->invoke(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Lshark/HeapField;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Lshark/HeapField;
    .locals 5

    const-string v0, "fieldRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lshark/HeapObject$HeapInstance$readFields$1$1;->this$0:Lshark/HeapObject$HeapInstance$readFields$1;

    iget-object v0, v0, Lshark/HeapObject$HeapInstance$readFields$1;->this$0:Lshark/HeapObject$HeapInstance;

    invoke-static {v0}, Lshark/HeapObject$HeapInstance;->access$getHprofGraph$p(Lshark/HeapObject$HeapInstance;)Lshark/HprofHeapGraph;

    move-result-object v0

    iget-object v1, p0, Lshark/HeapObject$HeapInstance$readFields$1$1;->$heapClass:Lshark/HeapObject$HeapClass;

    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lshark/HprofHeapGraph;->fieldName$shark_graph(JLshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lshark/HeapObject$HeapInstance$readFields$1$1;->this$0:Lshark/HeapObject$HeapInstance$readFields$1;

    iget-object v1, v1, Lshark/HeapObject$HeapInstance$readFields$1;->$fieldReader:Lkotlin/Lazy;

    iget-object v2, p0, Lshark/HeapObject$HeapInstance$readFields$1$1;->this$0:Lshark/HeapObject$HeapInstance$readFields$1;

    iget-object v2, v2, Lshark/HeapObject$HeapInstance$readFields$1;->$fieldReader$metadata:Lkotlin/reflect/KProperty;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/internal/FieldValuesReader;

    invoke-virtual {v1, p1}, Lshark/internal/FieldValuesReader;->readValue(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Lshark/ValueHolder;

    move-result-object p1

    .line 454
    new-instance v1, Lshark/HeapField;

    iget-object v2, p0, Lshark/HeapObject$HeapInstance$readFields$1$1;->$heapClass:Lshark/HeapObject$HeapClass;

    new-instance v3, Lshark/HeapValue;

    iget-object v4, p0, Lshark/HeapObject$HeapInstance$readFields$1$1;->this$0:Lshark/HeapObject$HeapInstance$readFields$1;

    iget-object v4, v4, Lshark/HeapObject$HeapInstance$readFields$1;->this$0:Lshark/HeapObject$HeapInstance;

    invoke-static {v4}, Lshark/HeapObject$HeapInstance;->access$getHprofGraph$p(Lshark/HeapObject$HeapInstance;)Lshark/HprofHeapGraph;

    move-result-object v4

    check-cast v4, Lshark/HeapGraph;

    invoke-direct {v3, v4, p1}, Lshark/HeapValue;-><init>(Lshark/HeapGraph;Lshark/ValueHolder;)V

    invoke-direct {v1, v2, v0, v3}, Lshark/HeapField;-><init>(Lshark/HeapObject$HeapClass;Ljava/lang/String;Lshark/HeapValue;)V

    return-object v1
.end method
