.class final Lshark/HprofWriter$write$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HprofWriter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HprofWriter;->write(Lokio/BufferedSink;Lshark/HprofRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokio/BufferedSink;",
        "Lkotlin/Unit;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lokio/BufferedSink;",
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
.field final synthetic $record:Lshark/HprofRecord;

.field final synthetic this$0:Lshark/HprofWriter;


# direct methods
.method constructor <init>(Lshark/HprofWriter;Lshark/HprofRecord;)V
    .locals 0

    iput-object p1, p0, Lshark/HprofWriter$write$2;->this$0:Lshark/HprofWriter;

    iput-object p2, p0, Lshark/HprofWriter$write$2;->$record:Lshark/HprofRecord;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p0, p1}, Lshark/HprofWriter$write$2;->invoke(Lokio/BufferedSink;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lokio/BufferedSink;)V
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lshark/HprofWriter$write$2;->$record:Lshark/HprofRecord;

    check-cast v0, Lshark/HprofRecord$LoadClassRecord;

    invoke-virtual {v0}, Lshark/HprofRecord$LoadClassRecord;->getClassSerialNumber()I

    move-result v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 144
    iget-object v0, p0, Lshark/HprofWriter$write$2;->this$0:Lshark/HprofWriter;

    iget-object v1, p0, Lshark/HprofWriter$write$2;->$record:Lshark/HprofRecord;

    check-cast v1, Lshark/HprofRecord$LoadClassRecord;

    invoke-virtual {v1}, Lshark/HprofRecord$LoadClassRecord;->getId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lshark/HprofWriter;->access$writeId(Lshark/HprofWriter;Lokio/BufferedSink;J)V

    .line 145
    iget-object v0, p0, Lshark/HprofWriter$write$2;->$record:Lshark/HprofRecord;

    check-cast v0, Lshark/HprofRecord$LoadClassRecord;

    invoke-virtual {v0}, Lshark/HprofRecord$LoadClassRecord;->getStackTraceSerialNumber()I

    move-result v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 146
    iget-object v0, p0, Lshark/HprofWriter$write$2;->this$0:Lshark/HprofWriter;

    iget-object v1, p0, Lshark/HprofWriter$write$2;->$record:Lshark/HprofRecord;

    check-cast v1, Lshark/HprofRecord$LoadClassRecord;

    invoke-virtual {v1}, Lshark/HprofRecord$LoadClassRecord;->getClassNameStringId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lshark/HprofWriter;->access$writeId(Lshark/HprofWriter;Lokio/BufferedSink;J)V

    return-void
.end method
