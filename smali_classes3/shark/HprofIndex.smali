.class public final Lshark/HprofIndex;
.super Ljava/lang/Object;
.source "HprofIndex.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HprofIndex$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/HprofIndex;",
        "",
        "sourceProvider",
        "Lshark/RandomAccessSourceProvider;",
        "header",
        "Lshark/HprofHeader;",
        "index",
        "Lshark/internal/HprofInMemoryIndex;",
        "(Lshark/RandomAccessSourceProvider;Lshark/HprofHeader;Lshark/internal/HprofInMemoryIndex;)V",
        "openHeapGraph",
        "Lshark/CloseableHeapGraph;",
        "Companion",
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
.field public static final Companion:Lshark/HprofIndex$Companion;


# instance fields
.field private final header:Lshark/HprofHeader;

.field private final index:Lshark/internal/HprofInMemoryIndex;

.field private final sourceProvider:Lshark/RandomAccessSourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/HprofIndex$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/HprofIndex$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HprofIndex;->Companion:Lshark/HprofIndex$Companion;

    return-void
.end method

.method private constructor <init>(Lshark/RandomAccessSourceProvider;Lshark/HprofHeader;Lshark/internal/HprofInMemoryIndex;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HprofIndex;->sourceProvider:Lshark/RandomAccessSourceProvider;

    iput-object p2, p0, Lshark/HprofIndex;->header:Lshark/HprofHeader;

    iput-object p3, p0, Lshark/HprofIndex;->index:Lshark/internal/HprofInMemoryIndex;

    return-void
.end method

.method public synthetic constructor <init>(Lshark/RandomAccessSourceProvider;Lshark/HprofHeader;Lshark/internal/HprofInMemoryIndex;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lshark/HprofIndex;-><init>(Lshark/RandomAccessSourceProvider;Lshark/HprofHeader;Lshark/internal/HprofInMemoryIndex;)V

    return-void
.end method


# virtual methods
.method public final openHeapGraph()Lshark/CloseableHeapGraph;
    .locals 4

    .line 19
    sget-object v0, Lshark/RandomAccessHprofReader;->Companion:Lshark/RandomAccessHprofReader$Companion;

    iget-object v1, p0, Lshark/HprofIndex;->sourceProvider:Lshark/RandomAccessSourceProvider;

    iget-object v2, p0, Lshark/HprofIndex;->header:Lshark/HprofHeader;

    invoke-virtual {v0, v1, v2}, Lshark/RandomAccessHprofReader$Companion;->openReaderFor(Lshark/RandomAccessSourceProvider;Lshark/HprofHeader;)Lshark/RandomAccessHprofReader;

    move-result-object v0

    .line 20
    new-instance v1, Lshark/HprofHeapGraph;

    iget-object v2, p0, Lshark/HprofIndex;->header:Lshark/HprofHeader;

    iget-object v3, p0, Lshark/HprofIndex;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-direct {v1, v2, v0, v3}, Lshark/HprofHeapGraph;-><init>(Lshark/HprofHeader;Lshark/RandomAccessHprofReader;Lshark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lshark/CloseableHeapGraph;

    return-object v1
.end method
