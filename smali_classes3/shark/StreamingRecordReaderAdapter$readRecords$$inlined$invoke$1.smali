.class public final Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;
.super Ljava/lang/Object;
.source "OnHprofRecordTagListener.kt"

# interfaces
.implements Lshark/OnHprofRecordTagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/StreamingRecordReaderAdapter;->readRecords(Ljava/util/Set;Lshark/OnHprofRecordListener;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnHprofRecordTagListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnHprofRecordTagListener.kt\nshark/OnHprofRecordTagListener$Companion$invoke$1\n+ 2 StreamingRecordReaderAdapter.kt\nshark/StreamingRecordReaderAdapter\n*L\n1#1,44:1\n65#2,150:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "shark/OnHprofRecordTagListener$Companion$invoke$1",
        "Lshark/OnHprofRecordTagListener;",
        "onHprofRecord",
        "",
        "tag",
        "Lshark/HprofRecordTag;",
        "length",
        "",
        "reader",
        "Lshark/HprofRecordReader;",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $listener$inlined:Lshark/OnHprofRecordListener;


# direct methods
.method public constructor <init>(Lshark/OnHprofRecordListener;)V
    .locals 0

    iput-object p1, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lshark/StreamingRecordReaderAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected heap dump tag "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " at position "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 188
    :pswitch_0
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 189
    sget-object p3, Lshark/HprofRecord$HeapDumpEndRecord;->INSTANCE:Lshark/HprofRecord$HeapDumpEndRecord;

    .line 190
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 184
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readHeapDumpInfoRecord()Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;

    move-result-object p3

    .line 185
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 177
    :pswitch_2
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 178
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readPrimitiveArrayDumpRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    move-result-object p3

    .line 179
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 171
    :pswitch_3
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 172
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readObjectArrayDumpRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    move-result-object p3

    .line 173
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 165
    :pswitch_4
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 166
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readInstanceDumpRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    move-result-object p3

    .line 167
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 160
    :pswitch_5
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 161
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readClassDumpRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    move-result-object p3

    .line 162
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 155
    :pswitch_6
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 156
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readUnreachableGcRootRecord()Lshark/GcRoot$Unreachable;

    move-result-object p3

    .line 157
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 149
    :pswitch_7
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 150
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readJniMonitorGcRootRecord()Lshark/GcRoot$JniMonitor;

    move-result-object p3

    .line 151
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 143
    :pswitch_8
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 144
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readVmInternalGcRootRecord()Lshark/GcRoot$VmInternal;

    move-result-object p3

    .line 145
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 137
    :pswitch_9
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 138
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readReferenceCleanupGcRootRecord()Lshark/GcRoot$ReferenceCleanup;

    move-result-object p3

    .line 139
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 131
    :pswitch_a
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 132
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readDebuggerGcRootRecord()Lshark/GcRoot$Debugger;

    move-result-object p3

    .line 133
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 125
    :pswitch_b
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 126
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readFinalizingGcRootRecord()Lshark/GcRoot$Finalizing;

    move-result-object p3

    .line 127
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 119
    :pswitch_c
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 120
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readInternedStringGcRootRecord()Lshark/GcRoot$InternedString;

    move-result-object p3

    .line 121
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 113
    :pswitch_d
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 114
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readThreadObjectGcRootRecord()Lshark/GcRoot$ThreadObject;

    move-result-object p3

    .line 115
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 107
    :pswitch_e
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 108
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readMonitorUsedGcRootRecord()Lshark/GcRoot$MonitorUsed;

    move-result-object p3

    .line 109
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 101
    :pswitch_f
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 102
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readThreadBlockGcRootRecord()Lshark/GcRoot$ThreadBlock;

    move-result-object p3

    .line 103
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 95
    :pswitch_10
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 96
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readStickyClassGcRootRecord()Lshark/GcRoot$StickyClass;

    move-result-object p3

    .line 97
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 89
    :pswitch_11
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 90
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readNativeStackGcRootRecord()Lshark/GcRoot$NativeStack;

    move-result-object p3

    .line 91
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 83
    :pswitch_12
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 84
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readJavaFrameGcRootRecord()Lshark/GcRoot$JavaFrame;

    move-result-object p3

    .line 85
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto/16 :goto_0

    .line 77
    :pswitch_13
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 78
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readJniLocalGcRootRecord()Lshark/GcRoot$JniLocal;

    move-result-object p3

    .line 79
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto :goto_0

    .line 72
    :pswitch_14
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 73
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readJniGlobalGcRootRecord()Lshark/GcRoot$JniGlobal;

    move-result-object p3

    .line 74
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto :goto_0

    .line 67
    :pswitch_15
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 68
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readUnknownGcRootRecord()Lshark/GcRoot$Unknown;

    move-result-object p3

    .line 69
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    check-cast p3, Lshark/GcRoot;

    invoke-direct {v0, p3}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;-><init>(Lshark/GcRoot;)V

    check-cast v0, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, v0}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto :goto_0

    .line 62
    :pswitch_16
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 63
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readStackTraceRecord()Lshark/HprofRecord$StackTraceRecord;

    move-result-object p3

    .line 64
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto :goto_0

    .line 57
    :pswitch_17
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 58
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readStackFrameRecord()Lshark/HprofRecord$StackFrameRecord;

    move-result-object p3

    .line 59
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto :goto_0

    .line 52
    :pswitch_18
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p1

    .line 53
    invoke-virtual {p4}, Lshark/HprofRecordReader;->readLoadClassRecord()Lshark/HprofRecord$LoadClassRecord;

    move-result-object p3

    .line 54
    iget-object p4, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p3, Lshark/HprofRecord;

    invoke-interface {p4, p1, p2, p3}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    goto :goto_0

    .line 47
    :pswitch_19
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v0

    .line 48
    invoke-virtual {p4, p2, p3}, Lshark/HprofRecordReader;->readStringRecord(J)Lshark/HprofRecord$StringRecord;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;->$listener$inlined:Lshark/OnHprofRecordListener;

    check-cast p1, Lshark/HprofRecord;

    invoke-interface {p2, v0, v1, p1}, Lshark/OnHprofRecordListener;->onHprofRecord(JLshark/HprofRecord;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
