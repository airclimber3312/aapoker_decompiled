.class public final enum Lcom/onevcat/uniwebview/Logger$Level;
.super Ljava/lang/Enum;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onevcat/uniwebview/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onevcat/uniwebview/Logger$Level;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/Logger$Level;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "VERBOSE",
        "DEBUG",
        "INFO",
        "CRITICAL",
        "OFF",
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
.field private static final synthetic $VALUES:[Lcom/onevcat/uniwebview/Logger$Level;

.field public static final enum CRITICAL:Lcom/onevcat/uniwebview/Logger$Level;

.field public static final enum DEBUG:Lcom/onevcat/uniwebview/Logger$Level;

.field public static final enum INFO:Lcom/onevcat/uniwebview/Logger$Level;

.field public static final enum OFF:Lcom/onevcat/uniwebview/Logger$Level;

.field public static final enum VERBOSE:Lcom/onevcat/uniwebview/Logger$Level;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/onevcat/uniwebview/Logger$Level;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/onevcat/uniwebview/Logger$Level;

    const/4 v1, 0x0

    sget-object v2, Lcom/onevcat/uniwebview/Logger$Level;->VERBOSE:Lcom/onevcat/uniwebview/Logger$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onevcat/uniwebview/Logger$Level;->DEBUG:Lcom/onevcat/uniwebview/Logger$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onevcat/uniwebview/Logger$Level;->INFO:Lcom/onevcat/uniwebview/Logger$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onevcat/uniwebview/Logger$Level;->CRITICAL:Lcom/onevcat/uniwebview/Logger$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/onevcat/uniwebview/Logger$Level;->OFF:Lcom/onevcat/uniwebview/Logger$Level;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/onevcat/uniwebview/Logger$Level;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/onevcat/uniwebview/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/Logger$Level;->VERBOSE:Lcom/onevcat/uniwebview/Logger$Level;

    .line 9
    new-instance v0, Lcom/onevcat/uniwebview/Logger$Level;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const-string v3, "DEBUG"

    invoke-direct {v0, v3, v1, v2}, Lcom/onevcat/uniwebview/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/Logger$Level;->DEBUG:Lcom/onevcat/uniwebview/Logger$Level;

    .line 10
    new-instance v0, Lcom/onevcat/uniwebview/Logger$Level;

    const/4 v1, 0x2

    const/16 v2, 0x14

    const-string v3, "INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/onevcat/uniwebview/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/Logger$Level;->INFO:Lcom/onevcat/uniwebview/Logger$Level;

    .line 11
    new-instance v0, Lcom/onevcat/uniwebview/Logger$Level;

    const/4 v1, 0x3

    const/16 v2, 0x50

    const-string v3, "CRITICAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/onevcat/uniwebview/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/Logger$Level;->CRITICAL:Lcom/onevcat/uniwebview/Logger$Level;

    .line 12
    new-instance v0, Lcom/onevcat/uniwebview/Logger$Level;

    const/4 v1, 0x4

    const/16 v2, 0x63

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/onevcat/uniwebview/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/Logger$Level;->OFF:Lcom/onevcat/uniwebview/Logger$Level;

    invoke-static {}, Lcom/onevcat/uniwebview/Logger$Level;->$values()[Lcom/onevcat/uniwebview/Logger$Level;

    move-result-object v0

    sput-object v0, Lcom/onevcat/uniwebview/Logger$Level;->$VALUES:[Lcom/onevcat/uniwebview/Logger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onevcat/uniwebview/Logger$Level;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onevcat/uniwebview/Logger$Level;
    .locals 1

    const-class v0, Lcom/onevcat/uniwebview/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onevcat/uniwebview/Logger$Level;

    return-object p0
.end method

.method public static values()[Lcom/onevcat/uniwebview/Logger$Level;
    .locals 1

    sget-object v0, Lcom/onevcat/uniwebview/Logger$Level;->$VALUES:[Lcom/onevcat/uniwebview/Logger$Level;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onevcat/uniwebview/Logger$Level;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/onevcat/uniwebview/Logger$Level;->value:I

    return v0
.end method
