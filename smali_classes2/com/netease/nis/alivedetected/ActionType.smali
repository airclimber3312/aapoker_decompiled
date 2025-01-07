.class public final enum Lcom/netease/nis/alivedetected/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/nis/alivedetected/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/nis/alivedetected/ActionType;

.field public static final enum ACTION_BLINK_EYES:Lcom/netease/nis/alivedetected/ActionType;

.field public static final enum ACTION_ERROR:Lcom/netease/nis/alivedetected/ActionType;

.field public static final enum ACTION_OPEN_MOUTH:Lcom/netease/nis/alivedetected/ActionType;

.field public static final enum ACTION_PASSED:Lcom/netease/nis/alivedetected/ActionType;

.field public static final enum ACTION_STRAIGHT_AHEAD:Lcom/netease/nis/alivedetected/ActionType;

.field public static final enum ACTION_TURN_HEAD_TO_LEFT:Lcom/netease/nis/alivedetected/ActionType;

.field public static final enum ACTION_TURN_HEAD_TO_RIGHT:Lcom/netease/nis/alivedetected/ActionType;


# instance fields
.field public final actionId:Ljava/lang/String;

.field public final actionTip:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/netease/nis/alivedetected/ActionType;

    const-string v1, "0"

    const-string/jumbo v2, "\u6b63\u89c6\u524d\u65b9"

    const-string v3, "ACTION_STRAIGHT_AHEAD"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/netease/nis/alivedetected/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_STRAIGHT_AHEAD:Lcom/netease/nis/alivedetected/ActionType;

    .line 2
    new-instance v1, Lcom/netease/nis/alivedetected/ActionType;

    const-string v2, "1"

    const-string/jumbo v3, "\u5411\u53f3\u8f6c\u5934"

    const-string v5, "ACTION_TURN_HEAD_TO_RIGHT"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/netease/nis/alivedetected/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/nis/alivedetected/ActionType;->ACTION_TURN_HEAD_TO_RIGHT:Lcom/netease/nis/alivedetected/ActionType;

    .line 3
    new-instance v2, Lcom/netease/nis/alivedetected/ActionType;

    const-string v3, "2"

    const-string/jumbo v5, "\u5411\u5de6\u8f6c\u5934"

    const-string v7, "ACTION_TURN_HEAD_TO_LEFT"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/netease/nis/alivedetected/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/netease/nis/alivedetected/ActionType;->ACTION_TURN_HEAD_TO_LEFT:Lcom/netease/nis/alivedetected/ActionType;

    .line 4
    new-instance v3, Lcom/netease/nis/alivedetected/ActionType;

    const-string v5, "3"

    const-string/jumbo v7, "\u5f20\u5634\u52a8\u4f5c"

    const-string v9, "ACTION_OPEN_MOUTH"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lcom/netease/nis/alivedetected/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/netease/nis/alivedetected/ActionType;->ACTION_OPEN_MOUTH:Lcom/netease/nis/alivedetected/ActionType;

    .line 5
    new-instance v5, Lcom/netease/nis/alivedetected/ActionType;

    const-string v7, "4"

    const-string/jumbo v9, "\u7728\u773c\u52a8\u4f5c"

    const-string v11, "ACTION_BLINK_EYES"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lcom/netease/nis/alivedetected/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/netease/nis/alivedetected/ActionType;->ACTION_BLINK_EYES:Lcom/netease/nis/alivedetected/ActionType;

    .line 6
    new-instance v7, Lcom/netease/nis/alivedetected/ActionType;

    const-string v9, "5"

    const-string/jumbo v11, "\u52a8\u4f5c\u9519\u8bef"

    const-string v13, "ACTION_ERROR"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lcom/netease/nis/alivedetected/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/netease/nis/alivedetected/ActionType;->ACTION_ERROR:Lcom/netease/nis/alivedetected/ActionType;

    .line 7
    new-instance v9, Lcom/netease/nis/alivedetected/ActionType;

    const-string v11, "6"

    const-string/jumbo v13, "\u52a8\u4f5c\u901a\u8fc7"

    const-string v15, "ACTION_PASSED"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lcom/netease/nis/alivedetected/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/netease/nis/alivedetected/ActionType;->ACTION_PASSED:Lcom/netease/nis/alivedetected/ActionType;

    const/4 v11, 0x7

    new-array v11, v11, [Lcom/netease/nis/alivedetected/ActionType;

    aput-object v0, v11, v4

    aput-object v1, v11, v6

    aput-object v2, v11, v8

    aput-object v3, v11, v10

    aput-object v5, v11, v12

    const/4 v0, 0x5

    aput-object v7, v11, v0

    aput-object v9, v11, v14

    .line 8
    sput-object v11, Lcom/netease/nis/alivedetected/ActionType;->$VALUES:[Lcom/netease/nis/alivedetected/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/netease/nis/alivedetected/ActionType;->actionId:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/netease/nis/alivedetected/ActionType;->actionTip:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/nis/alivedetected/ActionType;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/nis/alivedetected/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/nis/alivedetected/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/netease/nis/alivedetected/ActionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/alivedetected/ActionType;->$VALUES:[Lcom/netease/nis/alivedetected/ActionType;

    invoke-virtual {v0}, [Lcom/netease/nis/alivedetected/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/nis/alivedetected/ActionType;

    return-object v0
.end method


# virtual methods
.method public getActionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/ActionType;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/ActionType;->actionTip:Ljava/lang/String;

    return-object v0
.end method
