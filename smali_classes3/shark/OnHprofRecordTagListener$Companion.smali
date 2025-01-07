.class public final Lshark/OnHprofRecordTagListener$Companion;
.super Ljava/lang/Object;
.source "OnHprofRecordTagListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/OnHprofRecordTagListener;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042 \u0008\u0004\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006H\u0086\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/OnHprofRecordTagListener$Companion;",
        "",
        "()V",
        "invoke",
        "Lshark/OnHprofRecordTagListener;",
        "block",
        "Lkotlin/Function3;",
        "Lshark/HprofRecordTag;",
        "",
        "Lshark/HprofRecordReader;",
        "",
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
.field static final synthetic $$INSTANCE:Lshark/OnHprofRecordTagListener$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lshark/OnHprofRecordTagListener$Companion;

    invoke-direct {v0}, Lshark/OnHprofRecordTagListener$Companion;-><init>()V

    sput-object v0, Lshark/OnHprofRecordTagListener$Companion;->$$INSTANCE:Lshark/OnHprofRecordTagListener$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function3;)Lshark/OnHprofRecordTagListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lshark/HprofRecordTag;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lshark/HprofRecordReader;",
            "Lkotlin/Unit;",
            ">;)",
            "Lshark/OnHprofRecordTagListener;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lshark/OnHprofRecordTagListener$Companion$invoke$1;

    invoke-direct {v0, p1}, Lshark/OnHprofRecordTagListener$Companion$invoke$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lshark/OnHprofRecordTagListener;

    return-object v0
.end method
