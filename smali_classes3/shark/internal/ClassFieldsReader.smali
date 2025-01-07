.class public final Lshark/internal/ClassFieldsReader;
.super Ljava/lang/Object;
.source "ClassFieldsReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/internal/ClassFieldsReader$ReadInFlight;,
        Lshark/internal/ClassFieldsReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000M\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0008\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eJ\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000b2\u0006\u0010\r\u001a\u00020\u000eJ8\u0010\u0013\u001a\u0002H\u0014\"\u0004\u0008\u0000\u0010\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u001b\u0010\u0016\u001a\u0017\u0012\u0008\u0012\u00060\u0018R\u00020\u0000\u0012\u0004\u0012\u0002H\u00140\u0017\u00a2\u0006\u0002\u0008\u0019H\u0002\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u001d"
    }
    d2 = {
        "Lshark/internal/ClassFieldsReader;",
        "",
        "identifierByteSize",
        "",
        "classFieldBytes",
        "",
        "(I[B)V",
        "readInFlightThreadLocal",
        "shark/internal/ClassFieldsReader$readInFlightThreadLocal$1",
        "Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;",
        "classDumpFields",
        "",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "indexedClass",
        "Lshark/internal/IndexedObject$IndexedClass;",
        "classDumpHasReferenceFields",
        "",
        "classDumpStaticFields",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
        "read",
        "R",
        "initialPosition",
        "block",
        "Lkotlin/Function1;",
        "Lshark/internal/ClassFieldsReader$ReadInFlight;",
        "Lkotlin/ExtensionFunctionType;",
        "(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Companion",
        "ReadInFlight",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final BOOLEAN_TYPE:I

.field private static final BYTE_TYPE:I

.field private static final CHAR_TYPE:I

.field public static final Companion:Lshark/internal/ClassFieldsReader$Companion;

.field private static final DOUBLE_TYPE:I

.field private static final FLOAT_TYPE:I

.field private static final INT_TYPE:I

.field private static final LONG_TYPE:I

.field private static final SHORT_TYPE:I


# instance fields
.field private final classFieldBytes:[B

.field private final identifierByteSize:I

.field private final readInFlightThreadLocal:Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/internal/ClassFieldsReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/internal/ClassFieldsReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/internal/ClassFieldsReader;->Companion:Lshark/internal/ClassFieldsReader$Companion;

    .line 188
    sget-object v0, Lshark/PrimitiveType;->BOOLEAN:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/ClassFieldsReader;->BOOLEAN_TYPE:I

    .line 189
    sget-object v0, Lshark/PrimitiveType;->CHAR:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/ClassFieldsReader;->CHAR_TYPE:I

    .line 190
    sget-object v0, Lshark/PrimitiveType;->FLOAT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/ClassFieldsReader;->FLOAT_TYPE:I

    .line 191
    sget-object v0, Lshark/PrimitiveType;->DOUBLE:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/ClassFieldsReader;->DOUBLE_TYPE:I

    .line 192
    sget-object v0, Lshark/PrimitiveType;->BYTE:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/ClassFieldsReader;->BYTE_TYPE:I

    .line 193
    sget-object v0, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/ClassFieldsReader;->SHORT_TYPE:I

    .line 194
    sget-object v0, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/ClassFieldsReader;->INT_TYPE:I

    .line 195
    sget-object v0, Lshark/PrimitiveType;->LONG:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/ClassFieldsReader;->LONG_TYPE:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const-string v0, "classFieldBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lshark/internal/ClassFieldsReader;->identifierByteSize:I

    iput-object p2, p0, Lshark/internal/ClassFieldsReader;->classFieldBytes:[B

    .line 79
    new-instance p1, Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;

    invoke-direct {p1, p0}, Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;-><init>(Lshark/internal/ClassFieldsReader;)V

    iput-object p1, p0, Lshark/internal/ClassFieldsReader;->readInFlightThreadLocal:Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;

    return-void
.end method

.method public static final synthetic access$getBOOLEAN_TYPE$cp()I
    .locals 1

    .line 26
    sget v0, Lshark/internal/ClassFieldsReader;->BOOLEAN_TYPE:I

    return v0
.end method

.method public static final synthetic access$getBYTE_TYPE$cp()I
    .locals 1

    .line 26
    sget v0, Lshark/internal/ClassFieldsReader;->BYTE_TYPE:I

    return v0
.end method

.method public static final synthetic access$getCHAR_TYPE$cp()I
    .locals 1

    .line 26
    sget v0, Lshark/internal/ClassFieldsReader;->CHAR_TYPE:I

    return v0
.end method

.method public static final synthetic access$getClassFieldBytes$p(Lshark/internal/ClassFieldsReader;)[B
    .locals 0

    .line 26
    iget-object p0, p0, Lshark/internal/ClassFieldsReader;->classFieldBytes:[B

    return-object p0
.end method

.method public static final synthetic access$getDOUBLE_TYPE$cp()I
    .locals 1

    .line 26
    sget v0, Lshark/internal/ClassFieldsReader;->DOUBLE_TYPE:I

    return v0
.end method

.method public static final synthetic access$getFLOAT_TYPE$cp()I
    .locals 1

    .line 26
    sget v0, Lshark/internal/ClassFieldsReader;->FLOAT_TYPE:I

    return v0
.end method

.method public static final synthetic access$getINT_TYPE$cp()I
    .locals 1

    .line 26
    sget v0, Lshark/internal/ClassFieldsReader;->INT_TYPE:I

    return v0
.end method

.method public static final synthetic access$getIdentifierByteSize$p(Lshark/internal/ClassFieldsReader;)I
    .locals 0

    .line 26
    iget p0, p0, Lshark/internal/ClassFieldsReader;->identifierByteSize:I

    return p0
.end method

.method public static final synthetic access$getLONG_TYPE$cp()I
    .locals 1

    .line 26
    sget v0, Lshark/internal/ClassFieldsReader;->LONG_TYPE:I

    return v0
.end method

.method public static final synthetic access$getSHORT_TYPE$cp()I
    .locals 1

    .line 26
    sget v0, Lshark/internal/ClassFieldsReader;->SHORT_TYPE:I

    return v0
.end method

.method private final read(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lshark/internal/ClassFieldsReader$ReadInFlight;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lshark/internal/ClassFieldsReader;->readInFlightThreadLocal:Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;

    invoke-virtual {v0}, Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/internal/ClassFieldsReader$ReadInFlight;

    .line 88
    invoke-virtual {v0, p1}, Lshark/internal/ClassFieldsReader$ReadInFlight;->setPosition(I)V

    .line 89
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final classDumpFields(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/IndexedObject$IndexedClass;",
            ")",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "indexedClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lshark/internal/IndexedObject$IndexedClass;->getFieldsIndex()I

    move-result p1

    sget-object v0, Lshark/internal/ClassFieldsReader$classDumpFields$1;->INSTANCE:Lshark/internal/ClassFieldsReader$classDumpFields$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0}, Lshark/internal/ClassFieldsReader;->read(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final classDumpHasReferenceFields(Lshark/internal/IndexedObject$IndexedClass;)Z
    .locals 1

    const-string v0, "indexedClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lshark/internal/IndexedObject$IndexedClass;->getFieldsIndex()I

    move-result p1

    new-instance v0, Lshark/internal/ClassFieldsReader$classDumpHasReferenceFields$1;

    invoke-direct {v0, p0}, Lshark/internal/ClassFieldsReader$classDumpHasReferenceFields$1;-><init>(Lshark/internal/ClassFieldsReader;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0}, Lshark/internal/ClassFieldsReader;->read(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final classDumpStaticFields(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/IndexedObject$IndexedClass;",
            ")",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "indexedClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lshark/internal/IndexedObject$IndexedClass;->getFieldsIndex()I

    move-result p1

    sget-object v0, Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;->INSTANCE:Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0}, Lshark/internal/ClassFieldsReader;->read(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
