.class final Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HprofHeapGraph.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HprofHeapGraph;->readObjectArrayByteSize$shark_graph(JLshark/internal/IndexedObject$IndexedObjectArray;)I
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
        "Ljava/lang/Integer;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lshark/HprofRecordReader;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;

    invoke-direct {v0}, Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;-><init>()V

    sput-object v0, Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;->INSTANCE:Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lshark/HprofRecordReader;)I
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lshark/HprofRecordReader;->readInt()I

    move-result p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lshark/HprofRecordReader;

    invoke-virtual {p0, p1}, Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;->invoke(Lshark/HprofRecordReader;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
