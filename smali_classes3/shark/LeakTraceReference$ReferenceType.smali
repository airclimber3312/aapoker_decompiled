.class public final enum Lshark/LeakTraceReference$ReferenceType;
.super Ljava/lang/Enum;
.source "LeakTraceReference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/LeakTraceReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshark/LeakTraceReference$ReferenceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lshark/LeakTraceReference$ReferenceType;",
        "",
        "(Ljava/lang/String;I)V",
        "INSTANCE_FIELD",
        "STATIC_FIELD",
        "LOCAL",
        "ARRAY_ENTRY",
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
.field private static final synthetic $VALUES:[Lshark/LeakTraceReference$ReferenceType;

.field public static final enum ARRAY_ENTRY:Lshark/LeakTraceReference$ReferenceType;

.field public static final enum INSTANCE_FIELD:Lshark/LeakTraceReference$ReferenceType;

.field public static final enum LOCAL:Lshark/LeakTraceReference$ReferenceType;

.field public static final enum STATIC_FIELD:Lshark/LeakTraceReference$ReferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lshark/LeakTraceReference$ReferenceType;

    new-instance v1, Lshark/LeakTraceReference$ReferenceType;

    const-string v2, "INSTANCE_FIELD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lshark/LeakTraceReference$ReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/LeakTraceReference$ReferenceType;->INSTANCE_FIELD:Lshark/LeakTraceReference$ReferenceType;

    aput-object v1, v0, v3

    new-instance v1, Lshark/LeakTraceReference$ReferenceType;

    const-string v2, "STATIC_FIELD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lshark/LeakTraceReference$ReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/LeakTraceReference$ReferenceType;->STATIC_FIELD:Lshark/LeakTraceReference$ReferenceType;

    aput-object v1, v0, v3

    new-instance v1, Lshark/LeakTraceReference$ReferenceType;

    const-string v2, "LOCAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lshark/LeakTraceReference$ReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/LeakTraceReference$ReferenceType;->LOCAL:Lshark/LeakTraceReference$ReferenceType;

    aput-object v1, v0, v3

    new-instance v1, Lshark/LeakTraceReference$ReferenceType;

    const-string v2, "ARRAY_ENTRY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lshark/LeakTraceReference$ReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/LeakTraceReference$ReferenceType;->ARRAY_ENTRY:Lshark/LeakTraceReference$ReferenceType;

    aput-object v1, v0, v3

    sput-object v0, Lshark/LeakTraceReference$ReferenceType;->$VALUES:[Lshark/LeakTraceReference$ReferenceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lshark/LeakTraceReference$ReferenceType;
    .locals 1

    const-class v0, Lshark/LeakTraceReference$ReferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshark/LeakTraceReference$ReferenceType;

    return-object p0
.end method

.method public static values()[Lshark/LeakTraceReference$ReferenceType;
    .locals 1

    sget-object v0, Lshark/LeakTraceReference$ReferenceType;->$VALUES:[Lshark/LeakTraceReference$ReferenceType;

    invoke-virtual {v0}, [Lshark/LeakTraceReference$ReferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshark/LeakTraceReference$ReferenceType;

    return-object v0
.end method
