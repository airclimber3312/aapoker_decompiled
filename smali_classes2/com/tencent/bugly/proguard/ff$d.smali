.class public final enum Lcom/tencent/bugly/proguard/ff$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/ff$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum qd:Lcom/tencent/bugly/proguard/ff$d;

.field public static final enum qe:Lcom/tencent/bugly/proguard/ff$d;

.field public static final enum qf:Lcom/tencent/bugly/proguard/ff$d;

.field public static final enum qg:Lcom/tencent/bugly/proguard/ff$d;

.field public static final enum qh:Lcom/tencent/bugly/proguard/ff$d;

.field private static final synthetic qi:[Lcom/tencent/bugly/proguard/ff$d;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/tencent/bugly/proguard/ff$d;

    const-string v1, "Fp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/bugly/proguard/ff$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/bugly/proguard/ff$d;->qd:Lcom/tencent/bugly/proguard/ff$d;

    new-instance v1, Lcom/tencent/bugly/proguard/ff$d;

    const-string v3, "Quicken"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/bugly/proguard/ff$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/ff$d;->qe:Lcom/tencent/bugly/proguard/ff$d;

    new-instance v3, Lcom/tencent/bugly/proguard/ff$d;

    const-string v5, "Dwarf"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/bugly/proguard/ff$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/bugly/proguard/ff$d;->qf:Lcom/tencent/bugly/proguard/ff$d;

    new-instance v5, Lcom/tencent/bugly/proguard/ff$d;

    const-string v7, "FpUntilQuickenWarmedUp"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/bugly/proguard/ff$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/bugly/proguard/ff$d;->qg:Lcom/tencent/bugly/proguard/ff$d;

    new-instance v7, Lcom/tencent/bugly/proguard/ff$d;

    const-string v9, "DwarfUntilQuickenWarmedUp"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tencent/bugly/proguard/ff$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/bugly/proguard/ff$d;->qh:Lcom/tencent/bugly/proguard/ff$d;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tencent/bugly/proguard/ff$d;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tencent/bugly/proguard/ff$d;->qi:[Lcom/tencent/bugly/proguard/ff$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/bugly/proguard/ff$d;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ff$d;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/ff$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/ff$d;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/ff$d;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ff$d;->qi:[Lcom/tencent/bugly/proguard/ff$d;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/ff$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/ff$d;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/ff$2;->pO:[I

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ff$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "Unreachable."

    return-object v0

    :cond_0
    const-string v0, "Use dwarf-based backtrace before quicken has warmed up."

    return-object v0

    :cond_1
    const-string v0, "Use fp-based backtrace before quicken has warmed up."

    return-object v0

    :cond_2
    const-string v0, "Dwarf-based."

    return-object v0

    :cond_3
    const-string v0, "WeChat QuickenUnwindTable-based."

    return-object v0

    :cond_4
    const-string v0, "FramePointer-based."

    return-object v0
.end method
