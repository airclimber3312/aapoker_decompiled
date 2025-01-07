.class public final Lshark/HprofHeader;
.super Ljava/lang/Object;
.source "HprofHeader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HprofHeader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofHeader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofHeader.kt\nshark/HprofHeader\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,69:1\n9376#2:70\n9709#2,3:71\n*E\n*S KotlinDebug\n*F\n+ 1 HprofHeader.kt\nshark/HprofHeader\n*L\n31#1:70\n31#1,3:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lshark/HprofHeader;",
        "",
        "heapDumpTimestamp",
        "",
        "version",
        "Lshark/HprofVersion;",
        "identifierByteSize",
        "",
        "(JLshark/HprofVersion;I)V",
        "getHeapDumpTimestamp",
        "()J",
        "getIdentifierByteSize",
        "()I",
        "recordsPosition",
        "getRecordsPosition",
        "getVersion",
        "()Lshark/HprofVersion;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lshark/HprofHeader$Companion;

.field private static final supportedVersions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lshark/HprofVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final heapDumpTimestamp:J

.field private final identifierByteSize:I

.field private final recordsPosition:I

.field private final version:Lshark/HprofVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lshark/HprofHeader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/HprofHeader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HprofHeader;->Companion:Lshark/HprofHeader$Companion;

    .line 30
    invoke-static {}, Lshark/HprofVersion;->values()[Lshark/HprofVersion;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 71
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 31
    invoke-virtual {v4}, Lshark/HprofVersion;->getVersionString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 32
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lshark/HprofHeader;->supportedVersions:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lshark/HprofHeader;-><init>(JLshark/HprofVersion;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLshark/HprofVersion;I)V
    .locals 1

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lshark/HprofHeader;->heapDumpTimestamp:J

    iput-object p3, p0, Lshark/HprofHeader;->version:Lshark/HprofVersion;

    iput p4, p0, Lshark/HprofHeader;->identifierByteSize:I

    .line 27
    invoke-virtual {p3}, Lshark/HprofVersion;->getVersionString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lshark/HprofHeader;->recordsPosition:I

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JLshark/HprofVersion;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 14
    sget-object p3, Lshark/HprofVersion;->ANDROID:Lshark/HprofVersion;

    :cond_1
    const/4 p6, 0x4

    and-int/2addr p5, p6

    if-eqz p5, :cond_2

    const/4 p4, 0x4

    .line 20
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lshark/HprofHeader;-><init>(JLshark/HprofVersion;I)V

    return-void
.end method

.method public static final synthetic access$getSupportedVersions$cp()Ljava/util/Map;
    .locals 1

    .line 10
    sget-object v0, Lshark/HprofHeader;->supportedVersions:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic copy$default(Lshark/HprofHeader;JLshark/HprofVersion;IILjava/lang/Object;)Lshark/HprofHeader;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lshark/HprofHeader;->heapDumpTimestamp:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lshark/HprofHeader;->version:Lshark/HprofVersion;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lshark/HprofHeader;->identifierByteSize:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lshark/HprofHeader;->copy(JLshark/HprofVersion;I)Lshark/HprofHeader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lshark/HprofHeader;->heapDumpTimestamp:J

    return-wide v0
.end method

.method public final component2()Lshark/HprofVersion;
    .locals 1

    iget-object v0, p0, Lshark/HprofHeader;->version:Lshark/HprofVersion;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lshark/HprofHeader;->identifierByteSize:I

    return v0
.end method

.method public final copy(JLshark/HprofVersion;I)Lshark/HprofHeader;
    .locals 1

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lshark/HprofHeader;

    invoke-direct {v0, p1, p2, p3, p4}, Lshark/HprofHeader;-><init>(JLshark/HprofVersion;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/HprofHeader;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/HprofHeader;

    iget-wide v0, p0, Lshark/HprofHeader;->heapDumpTimestamp:J

    iget-wide v2, p1, Lshark/HprofHeader;->heapDumpTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lshark/HprofHeader;->version:Lshark/HprofVersion;

    iget-object v1, p1, Lshark/HprofHeader;->version:Lshark/HprofVersion;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lshark/HprofHeader;->identifierByteSize:I

    iget p1, p1, Lshark/HprofHeader;->identifierByteSize:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getHeapDumpTimestamp()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lshark/HprofHeader;->heapDumpTimestamp:J

    return-wide v0
.end method

.method public final getIdentifierByteSize()I
    .locals 1

    .line 20
    iget v0, p0, Lshark/HprofHeader;->identifierByteSize:I

    return v0
.end method

.method public final getRecordsPosition()I
    .locals 1

    .line 27
    iget v0, p0, Lshark/HprofHeader;->recordsPosition:I

    return v0
.end method

.method public final getVersion()Lshark/HprofVersion;
    .locals 1

    .line 14
    iget-object v0, p0, Lshark/HprofHeader;->version:Lshark/HprofVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lshark/HprofHeader;->heapDumpTimestamp:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lshark/HprofHeader;->version:Lshark/HprofVersion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lshark/HprofHeader;->identifierByteSize:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HprofHeader(heapDumpTimestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lshark/HprofHeader;->heapDumpTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lshark/HprofHeader;->version:Lshark/HprofVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifierByteSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lshark/HprofHeader;->identifierByteSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
