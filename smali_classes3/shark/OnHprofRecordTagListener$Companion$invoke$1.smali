.class public final Lshark/OnHprofRecordTagListener$Companion$invoke$1;
.super Ljava/lang/Object;
.source "OnHprofRecordTagListener.kt"

# interfaces
.implements Lshark/OnHprofRecordTagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/OnHprofRecordTagListener$Companion;->invoke(Lkotlin/jvm/functions/Function3;)Lshark/OnHprofRecordTagListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnHprofRecordTagListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnHprofRecordTagListener.kt\nshark/OnHprofRecordTagListener$Companion$invoke$1\n*L\n1#1,44:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "shark/OnHprofRecordTagListener$Companion$invoke$1",
        "Lshark/OnHprofRecordTagListener;",
        "onHprofRecord",
        "",
        "tag",
        "Lshark/HprofRecordTag;",
        "length",
        "",
        "reader",
        "Lshark/HprofRecordReader;",
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
.field final synthetic $block:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lshark/OnHprofRecordTagListener$Companion$invoke$1;->$block:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lshark/OnHprofRecordTagListener$Companion$invoke$1;->$block:Lkotlin/jvm/functions/Function3;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
