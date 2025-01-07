.class final Lshark/MetadataExtractor$Companion$NO_OP$1;
.super Ljava/lang/Object;
.source "MetadataExtractor.kt"

# interfaces
.implements Lshark/MetadataExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/MetadataExtractor$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "it",
        "Lshark/HeapGraph;",
        "extractMetadata"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lshark/MetadataExtractor$Companion$NO_OP$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lshark/MetadataExtractor$Companion$NO_OP$1;

    invoke-direct {v0}, Lshark/MetadataExtractor$Companion$NO_OP$1;-><init>()V

    sput-object v0, Lshark/MetadataExtractor$Companion$NO_OP$1;->INSTANCE:Lshark/MetadataExtractor$Companion$NO_OP$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extractMetadata(Lshark/HeapGraph;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapGraph;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
