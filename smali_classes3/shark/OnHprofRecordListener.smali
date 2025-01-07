.class public interface abstract Lshark/OnHprofRecordListener;
.super Ljava/lang/Object;
.source "OnHprofRecordListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/OnHprofRecordListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lshark/OnHprofRecordListener;",
        "",
        "onHprofRecord",
        "",
        "position",
        "",
        "record",
        "Lshark/HprofRecord;",
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
.field public static final Companion:Lshark/OnHprofRecordListener$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lshark/OnHprofRecordListener$Companion;->$$INSTANCE:Lshark/OnHprofRecordListener$Companion;

    sput-object v0, Lshark/OnHprofRecordListener;->Companion:Lshark/OnHprofRecordListener$Companion;

    return-void
.end method


# virtual methods
.method public abstract onHprofRecord(JLshark/HprofRecord;)V
.end method
