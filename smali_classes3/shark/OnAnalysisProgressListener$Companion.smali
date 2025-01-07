.class public final Lshark/OnAnalysisProgressListener$Companion;
.super Ljava/lang/Object;
.source "OnAnalysisProgressListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/OnAnalysisProgressListener;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0007\u001a\u00020\u00042\u0014\u0008\u0004\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0086\nR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/OnAnalysisProgressListener$Companion;",
        "",
        "()V",
        "NO_OP",
        "Lshark/OnAnalysisProgressListener;",
        "getNO_OP",
        "()Lshark/OnAnalysisProgressListener;",
        "invoke",
        "block",
        "Lkotlin/Function1;",
        "Lshark/OnAnalysisProgressListener$Step;",
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
.field static final synthetic $$INSTANCE:Lshark/OnAnalysisProgressListener$Companion;

.field private static final NO_OP:Lshark/OnAnalysisProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lshark/OnAnalysisProgressListener$Companion;

    invoke-direct {v0}, Lshark/OnAnalysisProgressListener$Companion;-><init>()V

    sput-object v0, Lshark/OnAnalysisProgressListener$Companion;->$$INSTANCE:Lshark/OnAnalysisProgressListener$Companion;

    .line 31
    sget-object v0, Lshark/OnAnalysisProgressListener$Companion$NO_OP$1;->INSTANCE:Lshark/OnAnalysisProgressListener$Companion$NO_OP$1;

    check-cast v0, Lshark/OnAnalysisProgressListener;

    sput-object v0, Lshark/OnAnalysisProgressListener$Companion;->NO_OP:Lshark/OnAnalysisProgressListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNO_OP()Lshark/OnAnalysisProgressListener;
    .locals 1

    .line 31
    sget-object v0, Lshark/OnAnalysisProgressListener$Companion;->NO_OP:Lshark/OnAnalysisProgressListener;

    return-object v0
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;)Lshark/OnAnalysisProgressListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lshark/OnAnalysisProgressListener$Step;",
            "Lkotlin/Unit;",
            ">;)",
            "Lshark/OnAnalysisProgressListener;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lshark/OnAnalysisProgressListener$Companion$invoke$1;

    invoke-direct {v0, p1}, Lshark/OnAnalysisProgressListener$Companion$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lshark/OnAnalysisProgressListener;

    return-object v0
.end method
