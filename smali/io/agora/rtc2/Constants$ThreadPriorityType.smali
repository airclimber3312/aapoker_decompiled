.class public final enum Lio/agora/rtc2/Constants$ThreadPriorityType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadPriorityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/Constants$ThreadPriorityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/Constants$ThreadPriorityType;

.field public static final enum CRITICAL:Lio/agora/rtc2/Constants$ThreadPriorityType;

.field public static final enum HIGH:Lio/agora/rtc2/Constants$ThreadPriorityType;

.field public static final enum HIGHEST:Lio/agora/rtc2/Constants$ThreadPriorityType;

.field public static final enum LOW:Lio/agora/rtc2/Constants$ThreadPriorityType;

.field public static final enum LOWEST:Lio/agora/rtc2/Constants$ThreadPriorityType;

.field public static final enum NORMAL:Lio/agora/rtc2/Constants$ThreadPriorityType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lio/agora/rtc2/Constants$ThreadPriorityType;

    const-string v1, "LOWEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/rtc2/Constants$ThreadPriorityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/Constants$ThreadPriorityType;->LOWEST:Lio/agora/rtc2/Constants$ThreadPriorityType;

    new-instance v1, Lio/agora/rtc2/Constants$ThreadPriorityType;

    const-string v3, "LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/rtc2/Constants$ThreadPriorityType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/Constants$ThreadPriorityType;->LOW:Lio/agora/rtc2/Constants$ThreadPriorityType;

    new-instance v3, Lio/agora/rtc2/Constants$ThreadPriorityType;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/rtc2/Constants$ThreadPriorityType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/rtc2/Constants$ThreadPriorityType;->NORMAL:Lio/agora/rtc2/Constants$ThreadPriorityType;

    new-instance v5, Lio/agora/rtc2/Constants$ThreadPriorityType;

    const-string v7, "HIGH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/agora/rtc2/Constants$ThreadPriorityType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/rtc2/Constants$ThreadPriorityType;->HIGH:Lio/agora/rtc2/Constants$ThreadPriorityType;

    new-instance v7, Lio/agora/rtc2/Constants$ThreadPriorityType;

    const-string v9, "HIGHEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/agora/rtc2/Constants$ThreadPriorityType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/rtc2/Constants$ThreadPriorityType;->HIGHEST:Lio/agora/rtc2/Constants$ThreadPriorityType;

    new-instance v9, Lio/agora/rtc2/Constants$ThreadPriorityType;

    const-string v11, "CRITICAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/agora/rtc2/Constants$ThreadPriorityType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/rtc2/Constants$ThreadPriorityType;->CRITICAL:Lio/agora/rtc2/Constants$ThreadPriorityType;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/agora/rtc2/Constants$ThreadPriorityType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lio/agora/rtc2/Constants$ThreadPriorityType;->$VALUES:[Lio/agora/rtc2/Constants$ThreadPriorityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/agora/rtc2/Constants$ThreadPriorityType;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc2/Constants$ThreadPriorityType;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget p0, p0, Lio/agora/rtc2/Constants$ThreadPriorityType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/Constants$ThreadPriorityType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/Constants$ThreadPriorityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/Constants$ThreadPriorityType;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/Constants$ThreadPriorityType;
    .locals 1

    sget-object v0, Lio/agora/rtc2/Constants$ThreadPriorityType;->$VALUES:[Lio/agora/rtc2/Constants$ThreadPriorityType;

    invoke-virtual {v0}, [Lio/agora/rtc2/Constants$ThreadPriorityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/Constants$ThreadPriorityType;

    return-object v0
.end method
