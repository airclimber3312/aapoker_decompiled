.class public final Lshark/ObjectInspector$Companion;
.super Ljava/lang/Object;
.source "ObjectInspector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/ObjectInspector;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0014\u0008\u0004\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0086\n\u00a8\u0006\t"
    }
    d2 = {
        "Lshark/ObjectInspector$Companion;",
        "",
        "()V",
        "invoke",
        "Lshark/ObjectInspector;",
        "block",
        "Lkotlin/Function1;",
        "Lshark/ObjectReporter;",
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
.field static final synthetic $$INSTANCE:Lshark/ObjectInspector$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lshark/ObjectInspector$Companion;

    invoke-direct {v0}, Lshark/ObjectInspector$Companion;-><init>()V

    sput-object v0, Lshark/ObjectInspector$Companion;->$$INSTANCE:Lshark/ObjectInspector$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function1;)Lshark/ObjectInspector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lshark/ObjectReporter;",
            "Lkotlin/Unit;",
            ">;)",
            "Lshark/ObjectInspector;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lshark/ObjectInspector$Companion$invoke$1;

    invoke-direct {v0, p1}, Lshark/ObjectInspector$Companion$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lshark/ObjectInspector;

    return-object v0
.end method
