.class final Lshark/HeapObject$HeapInstance$readFields$fieldReader$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HeapObject.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HeapObject$HeapInstance;->readFields()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lshark/internal/FieldValuesReader;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lshark/internal/FieldValuesReader;",
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
.field final synthetic this$0:Lshark/HeapObject$HeapInstance;


# direct methods
.method constructor <init>(Lshark/HeapObject$HeapInstance;)V
    .locals 0

    iput-object p1, p0, Lshark/HeapObject$HeapInstance$readFields$fieldReader$2;->this$0:Lshark/HeapObject$HeapInstance;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance$readFields$fieldReader$2;->invoke()Lshark/internal/FieldValuesReader;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lshark/internal/FieldValuesReader;
    .locals 2

    .line 446
    iget-object v0, p0, Lshark/HeapObject$HeapInstance$readFields$fieldReader$2;->this$0:Lshark/HeapObject$HeapInstance;

    invoke-static {v0}, Lshark/HeapObject$HeapInstance;->access$getHprofGraph$p(Lshark/HeapObject$HeapInstance;)Lshark/HprofHeapGraph;

    move-result-object v0

    iget-object v1, p0, Lshark/HeapObject$HeapInstance$readFields$fieldReader$2;->this$0:Lshark/HeapObject$HeapInstance;

    invoke-virtual {v1}, Lshark/HeapObject$HeapInstance;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lshark/HprofHeapGraph;->createFieldValuesReader$shark_graph(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;)Lshark/internal/FieldValuesReader;

    move-result-object v0

    return-object v0
.end method
