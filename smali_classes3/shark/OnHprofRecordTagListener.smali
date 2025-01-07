.class public interface abstract Lshark/OnHprofRecordTagListener;
.super Ljava/lang/Object;
.source "OnHprofRecordTagListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/OnHprofRecordTagListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/OnHprofRecordTagListener;",
        "",
        "onHprofRecord",
        "",
        "tag",
        "Lshark/HprofRecordTag;",
        "length",
        "",
        "reader",
        "Lshark/HprofRecordReader;",
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
.field public static final Companion:Lshark/OnHprofRecordTagListener$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lshark/OnHprofRecordTagListener$Companion;->$$INSTANCE:Lshark/OnHprofRecordTagListener$Companion;

    sput-object v0, Lshark/OnHprofRecordTagListener;->Companion:Lshark/OnHprofRecordTagListener$Companion;

    return-void
.end method


# virtual methods
.method public abstract onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V
.end method
