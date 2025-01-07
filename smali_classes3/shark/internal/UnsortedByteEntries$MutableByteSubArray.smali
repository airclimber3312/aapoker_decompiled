.class public final Lshark/internal/UnsortedByteEntries$MutableByteSubArray;
.super Ljava/lang/Object;
.source "UnsortedByteEntries.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/UnsortedByteEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MutableByteSubArray"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0008J\u0016\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lshark/internal/UnsortedByteEntries$MutableByteSubArray;",
        "",
        "(Lshark/internal/UnsortedByteEntries;)V",
        "writeByte",
        "",
        "value",
        "",
        "writeId",
        "",
        "writeInt",
        "",
        "writeLong",
        "writeTruncatedLong",
        "byteCount",
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
.field final synthetic this$0:Lshark/internal/UnsortedByteEntries;


# direct methods
.method public constructor <init>(Lshark/internal/UnsortedByteEntries;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeByte(B)V
    .locals 4

    .line 124
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v0

    .line 125
    iget-object v1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v1}, Lshark/internal/UnsortedByteEntries;->access$getSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lshark/internal/UnsortedByteEntries;->access$setSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;I)V

    .line 126
    iget-object v1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v1}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lt v1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v1}, Lshark/internal/UnsortedByteEntries;->access$getAssigned$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v1

    sub-int/2addr v1, v3

    iget-object v2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v2}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    .line 130
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getEntries$p(Lshark/internal/UnsortedByteEntries;)[B

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    aput-byte p1, v0, v1

    return-void

    .line 127
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Index "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be between 0 and "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final writeId(J)V
    .locals 1

    .line 134
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getLongIdentifiers$p(Lshark/internal/UnsortedByteEntries;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, p1, p2}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeLong(J)V

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    .line 137
    invoke-virtual {p0, p2}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public final writeInt(I)V
    .locals 4

    .line 142
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v0

    .line 143
    iget-object v1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v1}, Lshark/internal/UnsortedByteEntries;->access$getSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lshark/internal/UnsortedByteEntries;->access$setSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;I)V

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 144
    iget-object v2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v2}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v2}, Lshark/internal/UnsortedByteEntries;->access$getAssigned$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v1}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v1

    mul-int v2, v2, v1

    add-int/2addr v2, v0

    .line 148
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getEntries$p(Lshark/internal/UnsortedByteEntries;)[B

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 149
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 150
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 151
    aput-byte v3, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 152
    aput-byte p1, v0, v1

    return-void

    .line 145
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Index "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be between 0 and "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final writeLong(J)V
    .locals 8

    .line 176
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v0

    .line 177
    iget-object v1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v1}, Lshark/internal/UnsortedByteEntries;->access$getSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lshark/internal/UnsortedByteEntries;->access$setSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;I)V

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 178
    iget-object v2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v2}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 181
    iget-object v2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v2}, Lshark/internal/UnsortedByteEntries;->access$getAssigned$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v1}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v1

    mul-int v2, v2, v1

    add-int/2addr v2, v0

    .line 182
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getEntries$p(Lshark/internal/UnsortedByteEntries;)[B

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 183
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 184
    aput-byte v4, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 185
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 186
    aput-byte v4, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 187
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 188
    aput-byte v4, v0, v1

    add-int/lit8 v1, v2, 0x1

    ushr-long v3, p1, v3

    and-long/2addr v3, v6

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 189
    aput-byte v3, v0, v2

    and-long/2addr p1, v6

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 190
    aput-byte p1, v0, v1

    return-void

    .line 179
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Index "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be between 0 and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {p2}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final writeTruncatedLong(JI)V
    .locals 8

    .line 159
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v0

    .line 160
    iget-object v1, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v1}, Lshark/internal/UnsortedByteEntries;->access$getSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-static {v1, v2}, Lshark/internal/UnsortedByteEntries;->access$setSubArrayIndex$p(Lshark/internal/UnsortedByteEntries;I)V

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 161
    iget-object v2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v2}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    sub-int/2addr v2, p3

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v2}, Lshark/internal/UnsortedByteEntries;->access$getAssigned$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v3}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v2, v0

    .line 165
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getEntries$p(Lshark/internal/UnsortedByteEntries;)[B

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sub-int/2addr p3, v1

    const/16 v1, 0x8

    mul-int/lit8 p3, p3, 0x8

    :goto_1
    const-wide/16 v3, 0xff

    if-lt p3, v1, :cond_2

    add-int/lit8 v5, v2, 0x1

    ushr-long v6, p1, p3

    and-long/2addr v3, v6

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 169
    aput-byte v3, v0, v2

    add-int/lit8 p3, p3, -0x8

    move v2, v5

    goto :goto_1

    :cond_2
    and-long/2addr p1, v3

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 172
    aput-byte p1, v0, v2

    return-void

    .line 162
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Index "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be between 0 and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {p2}, Lshark/internal/UnsortedByteEntries;->access$getBytesPerEntry$p(Lshark/internal/UnsortedByteEntries;)I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method
