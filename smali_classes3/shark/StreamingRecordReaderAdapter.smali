.class public final Lshark/StreamingRecordReaderAdapter;
.super Ljava/lang/Object;
.source "StreamingRecordReaderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/StreamingRecordReaderAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingRecordReaderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingRecordReaderAdapter.kt\nshark/StreamingRecordReaderAdapter\n+ 2 OnHprofRecordTagListener.kt\nshark/OnHprofRecordTagListener$Companion\n*L\n1#1,265:1\n34#2,9:266\n*E\n*S KotlinDebug\n*F\n+ 1 StreamingRecordReaderAdapter.kt\nshark/StreamingRecordReaderAdapter\n*L\n64#1,9:266\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t0\u00082\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lshark/StreamingRecordReaderAdapter;",
        "",
        "streamingHprofReader",
        "Lshark/StreamingHprofReader;",
        "(Lshark/StreamingHprofReader;)V",
        "readRecords",
        "",
        "recordTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "Lshark/HprofRecord;",
        "listener",
        "Lshark/OnHprofRecordListener;",
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
.field public static final Companion:Lshark/StreamingRecordReaderAdapter$Companion;


# instance fields
.field private final streamingHprofReader:Lshark/StreamingHprofReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/StreamingRecordReaderAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/StreamingRecordReaderAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/StreamingRecordReaderAdapter;->Companion:Lshark/StreamingRecordReaderAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lshark/StreamingHprofReader;)V
    .locals 1

    const-string v0, "streamingHprofReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/StreamingRecordReaderAdapter;->streamingHprofReader:Lshark/StreamingHprofReader;

    return-void
.end method


# virtual methods
.method public final readRecords(Ljava/util/Set;Lshark/OnHprofRecordListener;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lshark/HprofRecord;",
            ">;>;",
            "Lshark/OnHprofRecordListener;",
            ")J"
        }
    .end annotation

    const-string v0, "recordTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lshark/StreamingRecordReaderAdapter;->Companion:Lshark/StreamingRecordReaderAdapter$Companion;

    invoke-virtual {v0, p1}, Lshark/StreamingRecordReaderAdapter$Companion;->asHprofTags(Ljava/util/Set;)Ljava/util/EnumSet;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lshark/StreamingRecordReaderAdapter;->streamingHprofReader:Lshark/StreamingHprofReader;

    .line 64
    check-cast p1, Ljava/util/Set;

    sget-object v1, Lshark/OnHprofRecordTagListener;->Companion:Lshark/OnHprofRecordTagListener$Companion;

    .line 266
    new-instance v1, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;

    invoke-direct {v1, p2}, Lshark/StreamingRecordReaderAdapter$readRecords$$inlined$invoke$1;-><init>(Lshark/OnHprofRecordListener;)V

    check-cast v1, Lshark/OnHprofRecordTagListener;

    .line 63
    invoke-virtual {v0, p1, v1}, Lshark/StreamingHprofReader;->readRecords(Ljava/util/Set;Lshark/OnHprofRecordTagListener;)J

    move-result-wide p1

    return-wide p1
.end method
