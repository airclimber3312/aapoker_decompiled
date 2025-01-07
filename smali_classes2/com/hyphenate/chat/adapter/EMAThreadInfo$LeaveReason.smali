.class public final enum Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/adapter/EMAThreadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeaveReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

.field public static final enum BE_KICKED:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

.field public static final enum DESTROYED:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

.field public static final enum LEFT:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->LEFT:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->BE_KICKED:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->DESTROYED:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->LEFT:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    const-string v1, "BE_KICKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->BE_KICKED:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    const-string v1, "DESTROYED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->DESTROYED:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    invoke-static {}, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->$values()[Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    return-object v0
.end method
