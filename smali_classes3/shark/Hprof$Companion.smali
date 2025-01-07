.class public final Lshark/Hprof$Companion;
.super Ljava/lang/Object;
.source "Hprof.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/Hprof;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lshark/Hprof$Companion;",
        "",
        "()V",
        "open",
        "Lshark/Hprof;",
        "hprofFile",
        "Ljava/io/File;",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lshark/Hprof$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final open(Ljava/io/File;)Lshark/Hprof;
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by HprofStreamingReader.readerFor or HprofRandomAccessReader.openReaderFor"
    .end annotation

    const-string v0, "hprofFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lshark/Hprof;

    sget-object v1, Lshark/HprofHeader;->Companion:Lshark/HprofHeader$Companion;

    invoke-virtual {v1, p1}, Lshark/HprofHeader$Companion;->parseHeaderOf(Ljava/io/File;)Lshark/HprofHeader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lshark/Hprof;-><init>(Ljava/io/File;Lshark/HprofHeader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
