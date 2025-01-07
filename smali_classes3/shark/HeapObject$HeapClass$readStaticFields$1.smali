.class final Lshark/HeapObject$HeapClass$readStaticFields$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HeapObject.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HeapObject$HeapClass;->readStaticFields()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
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
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
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
.field final synthetic this$0:Lshark/HeapObject$HeapClass;


# direct methods
.method constructor <init>(Lshark/HeapObject$HeapClass;)V
    .locals 0

    iput-object p1, p0, Lshark/HeapObject$HeapClass$readStaticFields$1;->this$0:Lshark/HeapObject$HeapClass;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;

    invoke-virtual {p0, p1}, Lshark/HeapObject$HeapClass$readStaticFields$1;->invoke(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;)Lshark/HeapField;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;)Lshark/HeapField;
    .locals 5

    const-string v0, "fieldRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lshark/HeapField;

    .line 277
    iget-object v1, p0, Lshark/HeapObject$HeapClass$readStaticFields$1;->this$0:Lshark/HeapObject$HeapClass;

    invoke-static {v1}, Lshark/HeapObject$HeapClass;->access$getHprofGraph$p(Lshark/HeapObject$HeapClass;)Lshark/HprofHeapGraph;

    move-result-object v2

    iget-object v3, p0, Lshark/HeapObject$HeapClass$readStaticFields$1;->this$0:Lshark/HeapObject$HeapClass;

    invoke-virtual {v3}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lshark/HprofHeapGraph;->staticFieldName$shark_graph(JLshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;)Ljava/lang/String;

    move-result-object v2

    .line 278
    new-instance v3, Lshark/HeapValue;

    iget-object v4, p0, Lshark/HeapObject$HeapClass$readStaticFields$1;->this$0:Lshark/HeapObject$HeapClass;

    invoke-static {v4}, Lshark/HeapObject$HeapClass;->access$getHprofGraph$p(Lshark/HeapObject$HeapClass;)Lshark/HprofHeapGraph;

    move-result-object v4

    check-cast v4, Lshark/HeapGraph;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getValue()Lshark/ValueHolder;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lshark/HeapValue;-><init>(Lshark/HeapGraph;Lshark/ValueHolder;)V

    .line 276
    invoke-direct {v0, v1, v2, v3}, Lshark/HeapField;-><init>(Lshark/HeapObject$HeapClass;Ljava/lang/String;Lshark/HeapValue;)V

    return-object v0
.end method
