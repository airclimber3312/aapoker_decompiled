.class final Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ClassFieldsReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/ClassFieldsReader;->classDumpStaticFields(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/internal/ClassFieldsReader$ReadInFlight;",
        "Ljava/util/ArrayList<",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003*\u00060\u0004R\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/ArrayList;",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
        "Lkotlin/collections/ArrayList;",
        "Lshark/internal/ClassFieldsReader$ReadInFlight;",
        "Lshark/internal/ClassFieldsReader;",
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
.field public static final INSTANCE:Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;

    invoke-direct {v0}, Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;-><init>()V

    sput-object v0, Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;->INSTANCE:Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lshark/internal/ClassFieldsReader$ReadInFlight;

    invoke-virtual {p0, p1}, Lshark/internal/ClassFieldsReader$classDumpStaticFields$1;->invoke(Lshark/internal/ClassFieldsReader$ReadInFlight;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/internal/ClassFieldsReader$ReadInFlight;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/ClassFieldsReader$ReadInFlight;",
            ")",
            "Ljava/util/ArrayList<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readUnsignedShort()I

    move-result v0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readId()J

    move-result-wide v3

    .line 37
    invoke-virtual {p1}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readUnsignedByte()I

    move-result v5

    .line 38
    invoke-virtual {p1, v5}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readValue(I)Lshark/ValueHolder;

    move-result-object v6

    .line 40
    new-instance v7, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;

    invoke-direct {v7, v3, v4, v5, v6}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;-><init>(JILshark/ValueHolder;)V

    .line 39
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
