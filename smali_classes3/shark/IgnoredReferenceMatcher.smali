.class public final Lshark/IgnoredReferenceMatcher;
.super Lshark/ReferenceMatcher;
.source "ReferenceMatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lshark/IgnoredReferenceMatcher;",
        "Lshark/ReferenceMatcher;",
        "pattern",
        "Lshark/ReferencePattern;",
        "(Lshark/ReferencePattern;)V",
        "getPattern",
        "()Lshark/ReferencePattern;",
        "toString",
        "",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final pattern:Lshark/ReferencePattern;


# direct methods
.method public constructor <init>(Lshark/ReferencePattern;)V
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lshark/ReferenceMatcher;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/IgnoredReferenceMatcher;->pattern:Lshark/ReferencePattern;

    return-void
.end method


# virtual methods
.method public getPattern()Lshark/ReferencePattern;
    .locals 1

    .line 40
    iget-object v0, p0, Lshark/IgnoredReferenceMatcher;->pattern:Lshark/ReferencePattern;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignored ref: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lshark/IgnoredReferenceMatcher;->getPattern()Lshark/ReferencePattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
