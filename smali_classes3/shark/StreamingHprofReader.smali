.class public final Lshark/StreamingHprofReader;
.super Ljava/lang/Object;
.source "StreamingHprofReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/StreamingHprofReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lshark/StreamingHprofReader;",
        "",
        "sourceProvider",
        "Lshark/StreamingSourceProvider;",
        "header",
        "Lshark/HprofHeader;",
        "(Lshark/StreamingSourceProvider;Lshark/HprofHeader;)V",
        "readRecords",
        "",
        "recordTags",
        "",
        "Lshark/HprofRecordTag;",
        "listener",
        "Lshark/OnHprofRecordTagListener;",
        "Companion",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/StreamingHprofReader$Companion;


# instance fields
.field private final header:Lshark/HprofHeader;

.field private final sourceProvider:Lshark/StreamingSourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/StreamingHprofReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/StreamingHprofReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/StreamingHprofReader;->Companion:Lshark/StreamingHprofReader$Companion;

    return-void
.end method

.method private constructor <init>(Lshark/StreamingSourceProvider;Lshark/HprofHeader;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/StreamingHprofReader;->sourceProvider:Lshark/StreamingSourceProvider;

    iput-object p2, p0, Lshark/StreamingHprofReader;->header:Lshark/HprofHeader;

    return-void
.end method

.method public synthetic constructor <init>(Lshark/StreamingSourceProvider;Lshark/HprofHeader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lshark/StreamingHprofReader;-><init>(Lshark/StreamingSourceProvider;Lshark/HprofHeader;)V

    return-void
.end method


# virtual methods
.method public final readRecords(Ljava/util/Set;Lshark/OnHprofRecordTagListener;)J
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lshark/HprofRecordTag;",
            ">;",
            "Lshark/OnHprofRecordTagListener;",
            ")J"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, " at "

    const-string v4, "java.lang.String.format(this, *args)"

    const-string v5, "0x%02x"

    const-string v6, "recordTags"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "listener"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v6, v1, Lshark/StreamingHprofReader;->sourceProvider:Lshark/StreamingSourceProvider;

    invoke-interface {v6}, Lshark/StreamingSourceProvider;->openStreamingSource()Lokio/BufferedSource;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, Ljava/lang/Throwable;

    :try_start_0
    move-object v8, v6

    check-cast v8, Lokio/BufferedSource;

    .line 73
    new-instance v9, Lshark/HprofRecordReader;

    iget-object v10, v1, Lshark/StreamingHprofReader;->header:Lshark/HprofHeader;

    invoke-direct {v9, v10, v8}, Lshark/HprofRecordReader;-><init>(Lshark/HprofHeader;Lokio/BufferedSource;)V

    .line 74
    iget-object v10, v1, Lshark/StreamingHprofReader;->header:Lshark/HprofHeader;

    invoke-virtual {v10}, Lshark/HprofHeader;->getRecordsPosition()I

    move-result v10

    invoke-virtual {v9, v10}, Lshark/HprofRecordReader;->skip(I)V

    .line 77
    sget-object v10, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v10}, Lshark/PrimitiveType;->getByteSize()I

    move-result v10

    const/4 v11, 0x2

    .line 78
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->sizeOf(I)I

    move-result v11

    .line 80
    :goto_0
    invoke-interface {v8}, Lokio/BufferedSource;->exhausted()Z

    move-result v12

    if-nez v12, :cond_38

    .line 82
    invoke-virtual {v9}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v12

    .line 85
    invoke-virtual {v9, v10}, Lshark/HprofRecordReader;->skip(I)V

    .line 88
    invoke-virtual {v9}, Lshark/HprofRecordReader;->readUnsignedInt()J

    move-result-wide v13

    .line 91
    sget-object v15, Lshark/HprofRecordTag;->STRING_IN_UTF8:Lshark/HprofRecordTag;

    invoke-virtual {v15}, Lshark/HprofRecordTag;->getTag()I

    move-result v15

    if-ne v12, v15, :cond_1

    .line 92
    sget-object v12, Lshark/HprofRecordTag;->STRING_IN_UTF8:Lshark/HprofRecordTag;

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 93
    sget-object v12, Lshark/HprofRecordTag;->STRING_IN_UTF8:Lshark/HprofRecordTag;

    invoke-interface {v2, v12, v13, v14, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v9, v13, v14}, Lshark/HprofRecordReader;->skip(J)V

    :goto_1
    move-object/from16 v22, v6

    move-object/from16 v19, v8

    goto/16 :goto_5

    .line 98
    :cond_1
    sget-object v15, Lshark/HprofRecordTag;->LOAD_CLASS:Lshark/HprofRecordTag;

    invoke-virtual {v15}, Lshark/HprofRecordTag;->getTag()I

    move-result v15

    if-ne v12, v15, :cond_3

    .line 99
    sget-object v12, Lshark/HprofRecordTag;->LOAD_CLASS:Lshark/HprofRecordTag;

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 100
    sget-object v12, Lshark/HprofRecordTag;->LOAD_CLASS:Lshark/HprofRecordTag;

    invoke-interface {v2, v12, v13, v14, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v9, v13, v14}, Lshark/HprofRecordReader;->skip(J)V

    goto :goto_1

    .line 105
    :cond_3
    sget-object v15, Lshark/HprofRecordTag;->STACK_FRAME:Lshark/HprofRecordTag;

    invoke-virtual {v15}, Lshark/HprofRecordTag;->getTag()I

    move-result v15

    if-ne v12, v15, :cond_5

    .line 106
    sget-object v12, Lshark/HprofRecordTag;->STACK_FRAME:Lshark/HprofRecordTag;

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 107
    sget-object v12, Lshark/HprofRecordTag;->STACK_FRAME:Lshark/HprofRecordTag;

    invoke-interface {v2, v12, v13, v14, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v9, v13, v14}, Lshark/HprofRecordReader;->skip(J)V

    goto :goto_1

    .line 112
    :cond_5
    sget-object v15, Lshark/HprofRecordTag;->STACK_TRACE:Lshark/HprofRecordTag;

    invoke-virtual {v15}, Lshark/HprofRecordTag;->getTag()I

    move-result v15

    if-ne v12, v15, :cond_7

    .line 113
    sget-object v12, Lshark/HprofRecordTag;->STACK_TRACE:Lshark/HprofRecordTag;

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 114
    sget-object v12, Lshark/HprofRecordTag;->STACK_TRACE:Lshark/HprofRecordTag;

    invoke-interface {v2, v12, v13, v14, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_1

    .line 116
    :cond_6
    invoke-virtual {v9, v13, v14}, Lshark/HprofRecordReader;->skip(J)V

    goto :goto_1

    .line 119
    :cond_7
    sget-object v15, Lshark/HprofRecordTag;->HEAP_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v15}, Lshark/HprofRecordTag;->getTag()I

    move-result v15

    if-ne v12, v15, :cond_8

    goto :goto_2

    :cond_8
    sget-object v15, Lshark/HprofRecordTag;->HEAP_DUMP_SEGMENT:Lshark/HprofRecordTag;

    invoke-virtual {v15}, Lshark/HprofRecordTag;->getTag()I

    move-result v15

    if-ne v12, v15, :cond_35

    .line 120
    :goto_2
    invoke-virtual {v9}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    move-object/from16 v19, v8

    move-wide/from16 v7, v17

    const/16 v17, 0x0

    .line 123
    :goto_3
    invoke-virtual {v9}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v20

    sub-long v20, v20, v15

    cmp-long v18, v20, v13

    if-gez v18, :cond_34

    move-wide/from16 v20, v13

    .line 124
    invoke-virtual {v9}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v12

    .line 125
    invoke-virtual {v9}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v14

    .line 127
    sget-object v22, Lshark/HprofRecordTag;->ROOT_UNKNOWN:Lshark/HprofRecordTag;

    invoke-virtual/range {v22 .. v22}, Lshark/HprofRecordTag;->getTag()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v22, v6

    move-wide/from16 v23, v7

    const-wide/16 v6, -0x1

    if-ne v14, v1, :cond_a

    .line 128
    :try_start_1
    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNKNOWN:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNKNOWN:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 131
    :cond_9
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 134
    :cond_a
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_c

    .line 135
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 136
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    :cond_b
    add-int v1, v11, v11

    .line 138
    invoke-virtual {v9, v1}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 141
    :cond_c
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_e

    .line 142
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 143
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    :cond_d
    add-int v1, v11, v10

    add-int/2addr v1, v10

    .line 145
    invoke-virtual {v9, v1}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 149
    :cond_e
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_10

    .line 150
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 151
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    :cond_f
    add-int v1, v11, v10

    add-int/2addr v1, v10

    .line 153
    invoke-virtual {v9, v1}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 157
    :cond_10
    sget-object v1, Lshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_12

    .line 158
    sget-object v1, Lshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 159
    sget-object v1, Lshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    :cond_11
    add-int v1, v11, v10

    .line 161
    invoke-virtual {v9, v1}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 165
    :cond_12
    sget-object v1, Lshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_14

    .line 166
    sget-object v1, Lshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 167
    sget-object v1, Lshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 169
    :cond_13
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 172
    :cond_14
    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_16

    .line 173
    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 174
    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    :cond_15
    add-int v1, v11, v10

    .line 176
    invoke-virtual {v9, v1}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 180
    :cond_16
    sget-object v1, Lshark/HprofRecordTag;->ROOT_MONITOR_USED:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_18

    .line 181
    sget-object v1, Lshark/HprofRecordTag;->ROOT_MONITOR_USED:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 182
    sget-object v1, Lshark/HprofRecordTag;->ROOT_MONITOR_USED:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 184
    :cond_17
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 188
    :cond_18
    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_1a

    .line 189
    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 190
    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    :cond_19
    add-int v1, v11, v10

    add-int/2addr v1, v10

    .line 192
    invoke-virtual {v9, v1}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 196
    :cond_1a
    sget-object v1, Lshark/HprofRecordTag;->ROOT_INTERNED_STRING:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_1c

    .line 197
    sget-object v1, Lshark/HprofRecordTag;->ROOT_INTERNED_STRING:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 198
    sget-object v1, Lshark/HprofRecordTag;->ROOT_INTERNED_STRING:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 200
    :cond_1b
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 204
    :cond_1c
    sget-object v1, Lshark/HprofRecordTag;->ROOT_FINALIZING:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_1e

    .line 205
    sget-object v1, Lshark/HprofRecordTag;->ROOT_FINALIZING:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 206
    sget-object v1, Lshark/HprofRecordTag;->ROOT_FINALIZING:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 208
    :cond_1d
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 212
    :cond_1e
    sget-object v1, Lshark/HprofRecordTag;->ROOT_DEBUGGER:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_20

    .line 213
    sget-object v1, Lshark/HprofRecordTag;->ROOT_DEBUGGER:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 214
    sget-object v1, Lshark/HprofRecordTag;->ROOT_DEBUGGER:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 216
    :cond_1f
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 220
    :cond_20
    sget-object v1, Lshark/HprofRecordTag;->ROOT_REFERENCE_CLEANUP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_22

    .line 221
    sget-object v1, Lshark/HprofRecordTag;->ROOT_REFERENCE_CLEANUP:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 222
    sget-object v1, Lshark/HprofRecordTag;->ROOT_REFERENCE_CLEANUP:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 224
    :cond_21
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 228
    :cond_22
    sget-object v1, Lshark/HprofRecordTag;->ROOT_VM_INTERNAL:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_24

    .line 229
    sget-object v1, Lshark/HprofRecordTag;->ROOT_VM_INTERNAL:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 230
    sget-object v1, Lshark/HprofRecordTag;->ROOT_VM_INTERNAL:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 232
    :cond_23
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 236
    :cond_24
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_26

    .line 237
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 238
    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    :cond_25
    add-int v1, v11, v10

    add-int/2addr v1, v10

    .line 240
    invoke-virtual {v9, v1}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 244
    :cond_26
    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNREACHABLE:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_28

    .line 245
    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNREACHABLE:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 246
    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNREACHABLE:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 248
    :cond_27
    invoke-virtual {v9, v11}, Lshark/HprofRecordReader;->skip(I)V

    goto/16 :goto_4

    .line 251
    :cond_28
    sget-object v1, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_2a

    .line 252
    sget-object v1, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 253
    sget-object v1, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto/16 :goto_4

    .line 255
    :cond_29
    invoke-virtual {v9}, Lshark/HprofRecordReader;->skipClassDumpRecord()V

    goto/16 :goto_4

    .line 258
    :cond_2a
    sget-object v1, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_2c

    .line 259
    sget-object v1, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 260
    sget-object v1, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_4

    .line 262
    :cond_2b
    invoke-virtual {v9}, Lshark/HprofRecordReader;->skipInstanceDumpRecord()V

    goto :goto_4

    .line 266
    :cond_2c
    sget-object v1, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_2e

    .line 267
    sget-object v1, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 268
    sget-object v1, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_4

    .line 270
    :cond_2d
    invoke-virtual {v9}, Lshark/HprofRecordReader;->skipObjectArrayDumpRecord()V

    goto :goto_4

    .line 274
    :cond_2e
    sget-object v1, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_30

    .line 275
    sget-object v1, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 276
    sget-object v1, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_4

    .line 278
    :cond_2f
    invoke-virtual {v9}, Lshark/HprofRecordReader;->skipPrimitiveArrayDumpRecord()V

    goto :goto_4

    .line 282
    :cond_30
    sget-object v1, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_NODATA:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-eq v14, v1, :cond_33

    .line 286
    sget-object v1, Lshark/HprofRecordTag;->HEAP_DUMP_INFO:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v14, v1, :cond_32

    .line 287
    sget-object v1, Lshark/HprofRecordTag;->HEAP_DUMP_INFO:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 288
    sget-object v1, Lshark/HprofRecordTag;->HEAP_DUMP_INFO:Lshark/HprofRecordTag;

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_4

    .line 290
    :cond_31
    invoke-virtual {v9}, Lshark/HprofRecordReader;->skipHeapDumpInfoRecord()V

    :goto_4
    move-object/from16 v1, p0

    move-wide v7, v12

    move/from16 v17, v14

    move-wide/from16 v13, v20

    move-object/from16 v6, v22

    goto/16 :goto_3

    .line 293
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    .line 296
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 295
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " after "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    .line 300
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 299
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v23

    .line 302
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 283
    :cond_33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_NODATA:Lshark/HprofRecordTag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be parsed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_34
    move-object/from16 v22, v6

    goto :goto_5

    :cond_35
    move-object/from16 v22, v6

    move-object/from16 v19, v8

    move-wide/from16 v20, v13

    .line 309
    sget-object v1, Lshark/HprofRecordTag;->HEAP_DUMP_END:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->getTag()I

    move-result v1

    if-ne v12, v1, :cond_36

    .line 310
    sget-object v1, Lshark/HprofRecordTag;->HEAP_DUMP_END:Lshark/HprofRecordTag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 311
    sget-object v1, Lshark/HprofRecordTag;->HEAP_DUMP_END:Lshark/HprofRecordTag;

    move-wide/from16 v6, v20

    invoke-interface {v2, v1, v6, v7, v9}, Lshark/OnHprofRecordTagListener;->onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V

    goto :goto_5

    :cond_36
    move-wide/from16 v6, v20

    .line 315
    invoke-virtual {v9, v6, v7}, Lshark/HprofRecordReader;->skip(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_37
    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v8, v19

    move-object/from16 v6, v22

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v6, v22

    goto :goto_7

    :cond_38
    move-object/from16 v22, v6

    .line 319
    :try_start_2
    invoke-virtual {v9}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    .line 72
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide v0

    :catchall_1
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_6
    move-object v1, v0

    :goto_7
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
