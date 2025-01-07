.class final Lshark/internal/ClassFieldsReader$ReadInFlight;
.super Ljava/lang/Object;
.source "ClassFieldsReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/ClassFieldsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadInFlight"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u001fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "Lshark/internal/ClassFieldsReader$ReadInFlight;",
        "",
        "(Lshark/internal/ClassFieldsReader;)V",
        "position",
        "",
        "getPosition",
        "()I",
        "setPosition",
        "(I)V",
        "readBoolean",
        "",
        "readByte",
        "",
        "readChar",
        "",
        "readDouble",
        "",
        "readFloat",
        "",
        "readId",
        "",
        "readInt",
        "readLong",
        "readShort",
        "",
        "readUnsignedByte",
        "readUnsignedShort",
        "readValue",
        "Lshark/ValueHolder;",
        "type",
        "skipStaticFields",
        "",
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
.field private position:I

.field final synthetic this$0:Lshark/internal/ClassFieldsReader;


# direct methods
.method public constructor <init>(Lshark/internal/ClassFieldsReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPosition()I
    .locals 1

    .line 93
    iget v0, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    return v0
.end method

.method public final readBoolean()Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final readByte()B
    .locals 3

    .line 124
    iget-object v0, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v0}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v0

    iget v1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final readChar()C
    .locals 1

    .line 175
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 2

    .line 183
    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    .line 179
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readId()J
    .locals 2

    .line 160
    iget-object v0, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v0}, Lshark/internal/ClassFieldsReader;->access$getIdentifierByteSize$p(Lshark/internal/ClassFieldsReader;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readLong()J

    move-result-wide v0

    goto :goto_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ID Length must be 1, 2, 4, or 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readInt()I

    move-result v0

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readShort()S

    move-result v0

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readByte()B

    move-result v0

    :goto_0
    int-to-long v0, v0

    :goto_1
    return-wide v0
.end method

.method public final readInt()I
    .locals 4

    .line 128
    iget-object v0, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v0}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v0

    iget v1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 129
    iget-object v1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v1}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v1

    iget v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 130
    iget-object v1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v1}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v1

    iget v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 131
    iget-object v1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v1}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v1

    iget v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final readLong()J
    .locals 7

    .line 135
    iget-object v0, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v0}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v0

    iget v1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    .line 136
    iget-object v4, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v4}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v4

    iget v5, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 137
    iget-object v4, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v4}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v4

    iget v5, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 138
    iget-object v4, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v4}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v4

    iget v5, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 139
    iget-object v4, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v4}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v4

    iget v5, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 140
    iget-object v4, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v4}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v4

    iget v5, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 141
    iget-object v4, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v4}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v4

    iget v5, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 142
    iget-object v4, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v4}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v4

    iget v5, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()S
    .locals 4

    .line 146
    iget-object v0, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v0}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v0

    iget v1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 147
    iget-object v1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v1}, Lshark/internal/ClassFieldsReader;->access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B

    move-result-object v1

    iget v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final readUnsignedByte()I
    .locals 1

    .line 155
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 2

    .line 151
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final readValue(I)Lshark/ValueHolder;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 110
    new-instance p1, Lshark/ValueHolder$ReferenceHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$ReferenceHolder;-><init>(J)V

    check-cast p1, Lshark/ValueHolder;

    goto/16 :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lshark/internal/ClassFieldsReader;->access$getBOOLEAN_TYPE$cp()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p1, Lshark/ValueHolder$BooleanHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readBoolean()Z

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$BooleanHolder;-><init>(Z)V

    check-cast p1, Lshark/ValueHolder;

    goto/16 :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lshark/internal/ClassFieldsReader;->access$getCHAR_TYPE$cp()I

    move-result v0

    if-ne p1, v0, :cond_2

    new-instance p1, Lshark/ValueHolder$CharHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readChar()C

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$CharHolder;-><init>(C)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lshark/internal/ClassFieldsReader;->access$getFLOAT_TYPE$cp()I

    move-result v0

    if-ne p1, v0, :cond_3

    new-instance p1, Lshark/ValueHolder$FloatHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readFloat()F

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$FloatHolder;-><init>(F)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {}, Lshark/internal/ClassFieldsReader;->access$getDOUBLE_TYPE$cp()I

    move-result v0

    if-ne p1, v0, :cond_4

    new-instance p1, Lshark/ValueHolder$DoubleHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readDouble()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$DoubleHolder;-><init>(D)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 115
    :cond_4
    invoke-static {}, Lshark/internal/ClassFieldsReader;->access$getBYTE_TYPE$cp()I

    move-result v0

    if-ne p1, v0, :cond_5

    new-instance p1, Lshark/ValueHolder$ByteHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readByte()B

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$ByteHolder;-><init>(B)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 116
    :cond_5
    invoke-static {}, Lshark/internal/ClassFieldsReader;->access$getSHORT_TYPE$cp()I

    move-result v0

    if-ne p1, v0, :cond_6

    new-instance p1, Lshark/ValueHolder$ShortHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readShort()S

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$ShortHolder;-><init>(S)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 117
    :cond_6
    invoke-static {}, Lshark/internal/ClassFieldsReader;->access$getINT_TYPE$cp()I

    move-result v0

    if-ne p1, v0, :cond_7

    new-instance p1, Lshark/ValueHolder$IntHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readInt()I

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$IntHolder;-><init>(I)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 118
    :cond_7
    invoke-static {}, Lshark/internal/ClassFieldsReader;->access$getLONG_TYPE$cp()I

    move-result v0

    if-ne p1, v0, :cond_8

    new-instance p1, Lshark/ValueHolder$LongHolder;

    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$LongHolder;-><init>(J)V

    check-cast p1, Lshark/ValueHolder;

    :goto_0
    return-object p1

    .line 119
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setPosition(I)V
    .locals 0

    .line 93
    iput p1, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    return-void
.end method

.method public final skipStaticFields()V
    .locals 5

    .line 96
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 98
    iget v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    iget-object v3, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v3}, Lshark/internal/ClassFieldsReader;->access$getIdentifierByteSize$p(Lshark/internal/ClassFieldsReader;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    .line 99
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readUnsignedByte()I

    move-result v2

    .line 100
    iget v3, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 101
    iget-object v2, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v2}, Lshark/internal/ClassFieldsReader;->access$getIdentifierByteSize$p(Lshark/internal/ClassFieldsReader;)I

    move-result v2

    goto :goto_1

    .line 103
    :cond_0
    sget-object v4, Lshark/PrimitiveType;->Companion:Lshark/PrimitiveType$Companion;

    invoke-virtual {v4}, Lshark/PrimitiveType$Companion;->getByteSizeByHprofType()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_1
    add-int/2addr v3, v2

    .line 100
    iput v3, p0, Lshark/internal/ClassFieldsReader$ReadInFlight;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
