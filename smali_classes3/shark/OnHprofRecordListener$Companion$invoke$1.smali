.class public final Lshark/OnHprofRecordListener$Companion$invoke$1;
.super Ljava/lang/Object;
.source "OnHprofRecordListener.kt"

# interfaces
.implements Lshark/OnHprofRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/OnHprofRecordListener$Companion;->invoke(Lkotlin/jvm/functions/Function2;)Lshark/OnHprofRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnHprofRecordListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnHprofRecordListener.kt\nshark/OnHprofRecordListener$Companion$invoke$1\n*L\n1#1,42:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "shark/OnHprofRecordListener$Companion$invoke$1",
        "Lshark/OnHprofRecordListener;",
        "onHprofRecord",
        "",
        "position",
        "",
        "record",
        "Lshark/HprofRecord;",
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
.field final synthetic $block:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lshark/OnHprofRecordListener$Companion$invoke$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHprofRecord(JLshark/HprofRecord;)V
    .locals 1

    const-string v0, "record"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lshark/OnHprofRecordListener$Companion$invoke$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
