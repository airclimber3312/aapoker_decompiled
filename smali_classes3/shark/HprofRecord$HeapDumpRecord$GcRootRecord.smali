.class public final Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;
.super Lshark/HprofRecord$HeapDumpRecord;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord$HeapDumpRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GcRootRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;",
        "Lshark/HprofRecord$HeapDumpRecord;",
        "gcRoot",
        "Lshark/GcRoot;",
        "(Lshark/GcRoot;)V",
        "getGcRoot",
        "()Lshark/GcRoot;",
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
.field private final gcRoot:Lshark/GcRoot;


# direct methods
.method public constructor <init>(Lshark/GcRoot;)V
    .locals 1

    const-string v0, "gcRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lshark/HprofRecord$HeapDumpRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;->gcRoot:Lshark/GcRoot;

    return-void
.end method


# virtual methods
.method public final getGcRoot()Lshark/GcRoot;
    .locals 1

    .line 49
    iget-object v0, p0, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;->gcRoot:Lshark/GcRoot;

    return-object v0
.end method
