.class final Lshark/HprofHeapGraph$readObjectRecord$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HprofHeapGraph.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HprofHeapGraph;->readObjectRecord(JLshark/internal/IndexedObject;Lkotlin/jvm/functions/Function1;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/HprofRecordReader;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
        "Lshark/HprofRecordReader;",
        "invoke",
        "(Lshark/HprofRecordReader;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $readBlock:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lshark/HprofHeapGraph$readObjectRecord$1;->$readBlock:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lshark/HprofRecordReader;

    invoke-virtual {p0, p1}, Lshark/HprofHeapGraph$readObjectRecord$1;->invoke(Lshark/HprofRecordReader;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/HprofRecordReader;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HprofRecordReader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lshark/HprofHeapGraph$readObjectRecord$1;->$readBlock:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    return-object p1
.end method
