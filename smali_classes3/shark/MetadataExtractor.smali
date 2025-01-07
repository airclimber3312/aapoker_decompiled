.class public interface abstract Lshark/MetadataExtractor;
.super Ljava/lang/Object;
.source "MetadataExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/MetadataExtractor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u001c\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lshark/MetadataExtractor;",
        "",
        "extractMetadata",
        "",
        "",
        "graph",
        "Lshark/HeapGraph;",
        "Companion",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/MetadataExtractor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lshark/MetadataExtractor$Companion;->$$INSTANCE:Lshark/MetadataExtractor$Companion;

    sput-object v0, Lshark/MetadataExtractor;->Companion:Lshark/MetadataExtractor$Companion;

    return-void
.end method


# virtual methods
.method public abstract extractMetadata(Lshark/HeapGraph;)Ljava/util/Map;
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
.end method
