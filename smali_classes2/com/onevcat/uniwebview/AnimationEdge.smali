.class public final enum Lcom/onevcat/uniwebview/AnimationEdge;
.super Ljava/lang/Enum;
.source "AnimationEdge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/AnimationEdge$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onevcat/uniwebview/AnimationEdge;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/AnimationEdge;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NONE",
        "TOP",
        "LEFT",
        "BOTTOM",
        "RIGHT",
        "Companion",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onevcat/uniwebview/AnimationEdge;

.field public static final enum BOTTOM:Lcom/onevcat/uniwebview/AnimationEdge;

.field public static final Companion:Lcom/onevcat/uniwebview/AnimationEdge$Companion;

.field public static final enum LEFT:Lcom/onevcat/uniwebview/AnimationEdge;

.field public static final enum NONE:Lcom/onevcat/uniwebview/AnimationEdge;

.field public static final enum RIGHT:Lcom/onevcat/uniwebview/AnimationEdge;

.field public static final enum TOP:Lcom/onevcat/uniwebview/AnimationEdge;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/onevcat/uniwebview/AnimationEdge;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/onevcat/uniwebview/AnimationEdge;

    const/4 v1, 0x0

    sget-object v2, Lcom/onevcat/uniwebview/AnimationEdge;->NONE:Lcom/onevcat/uniwebview/AnimationEdge;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onevcat/uniwebview/AnimationEdge;->TOP:Lcom/onevcat/uniwebview/AnimationEdge;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onevcat/uniwebview/AnimationEdge;->LEFT:Lcom/onevcat/uniwebview/AnimationEdge;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onevcat/uniwebview/AnimationEdge;->BOTTOM:Lcom/onevcat/uniwebview/AnimationEdge;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/onevcat/uniwebview/AnimationEdge;->RIGHT:Lcom/onevcat/uniwebview/AnimationEdge;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/onevcat/uniwebview/AnimationEdge;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/onevcat/uniwebview/AnimationEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->NONE:Lcom/onevcat/uniwebview/AnimationEdge;

    .line 5
    new-instance v0, Lcom/onevcat/uniwebview/AnimationEdge;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/onevcat/uniwebview/AnimationEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->TOP:Lcom/onevcat/uniwebview/AnimationEdge;

    .line 6
    new-instance v0, Lcom/onevcat/uniwebview/AnimationEdge;

    const-string v1, "LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/onevcat/uniwebview/AnimationEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->LEFT:Lcom/onevcat/uniwebview/AnimationEdge;

    .line 7
    new-instance v0, Lcom/onevcat/uniwebview/AnimationEdge;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/onevcat/uniwebview/AnimationEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->BOTTOM:Lcom/onevcat/uniwebview/AnimationEdge;

    .line 8
    new-instance v0, Lcom/onevcat/uniwebview/AnimationEdge;

    const-string v1, "RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/onevcat/uniwebview/AnimationEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->RIGHT:Lcom/onevcat/uniwebview/AnimationEdge;

    invoke-static {}, Lcom/onevcat/uniwebview/AnimationEdge;->$values()[Lcom/onevcat/uniwebview/AnimationEdge;

    move-result-object v0

    sput-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->$VALUES:[Lcom/onevcat/uniwebview/AnimationEdge;

    new-instance v0, Lcom/onevcat/uniwebview/AnimationEdge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/AnimationEdge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->Companion:Lcom/onevcat/uniwebview/AnimationEdge$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onevcat/uniwebview/AnimationEdge;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onevcat/uniwebview/AnimationEdge;
    .locals 1

    const-class v0, Lcom/onevcat/uniwebview/AnimationEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onevcat/uniwebview/AnimationEdge;

    return-object p0
.end method

.method public static values()[Lcom/onevcat/uniwebview/AnimationEdge;
    .locals 1

    sget-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->$VALUES:[Lcom/onevcat/uniwebview/AnimationEdge;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onevcat/uniwebview/AnimationEdge;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/onevcat/uniwebview/AnimationEdge;->value:I

    return v0
.end method
