.class final enum Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EMSmartPingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

.field public static final enum EMEvaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

.field public static final enum EMHitted:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

.field public static final enum EMReady:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

.field public static final enum EMReevaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

.field public static final enum EMStopped:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReady:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMEvaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReevaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMHitted:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMStopped:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    const-string v1, "EMReady"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReady:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    const-string v1, "EMEvaluating"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMEvaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    const-string v1, "EMReevaluating"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReevaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    const-string v1, "EMHitted"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMHitted:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    const-string v1, "EMStopped"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMStopped:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-static {}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->$values()[Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->$VALUES:[Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->$VALUES:[Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    return-object v0
.end method
