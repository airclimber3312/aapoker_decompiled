.class public interface abstract Lshark/internal/ReferencePathNode$LibraryLeakNode;
.super Ljava/lang/Object;
.source "ReferencePathNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/ReferencePathNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LibraryLeakNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lshark/internal/ReferencePathNode$LibraryLeakNode;",
        "",
        "matcher",
        "Lshark/LibraryLeakReferenceMatcher;",
        "getMatcher",
        "()Lshark/LibraryLeakReferenceMatcher;",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract getMatcher()Lshark/LibraryLeakReferenceMatcher;
.end method
