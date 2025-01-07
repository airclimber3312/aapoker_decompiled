.class public final Lshark/MetadataExtractor$Companion;
.super Ljava/lang/Object;
.source "MetadataExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/MetadataExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0007\u001a\u00020\u00042 \u0008\u0004\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b0\tH\u0086\nR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lshark/MetadataExtractor$Companion;",
        "",
        "()V",
        "NO_OP",
        "Lshark/MetadataExtractor;",
        "getNO_OP",
        "()Lshark/MetadataExtractor;",
        "invoke",
        "block",
        "Lkotlin/Function1;",
        "Lshark/HeapGraph;",
        "",
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


# static fields
.field static final synthetic $$INSTANCE:Lshark/MetadataExtractor$Companion;

.field private static final NO_OP:Lshark/MetadataExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lshark/MetadataExtractor$Companion;

    invoke-direct {v0}, Lshark/MetadataExtractor$Companion;-><init>()V

    sput-object v0, Lshark/MetadataExtractor$Companion;->$$INSTANCE:Lshark/MetadataExtractor$Companion;

    .line 16
    sget-object v0, Lshark/MetadataExtractor$Companion$NO_OP$1;->INSTANCE:Lshark/MetadataExtractor$Companion$NO_OP$1;

    check-cast v0, Lshark/MetadataExtractor;

    sput-object v0, Lshark/MetadataExtractor$Companion;->NO_OP:Lshark/MetadataExtractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNO_OP()Lshark/MetadataExtractor;
    .locals 1

    .line 16
    sget-object v0, Lshark/MetadataExtractor$Companion;->NO_OP:Lshark/MetadataExtractor;

    return-object v0
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;)Lshark/MetadataExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lshark/HeapGraph;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lshark/MetadataExtractor;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lshark/MetadataExtractor$Companion$invoke$1;

    invoke-direct {v0, p1}, Lshark/MetadataExtractor$Companion$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lshark/MetadataExtractor;

    return-object v0
.end method
