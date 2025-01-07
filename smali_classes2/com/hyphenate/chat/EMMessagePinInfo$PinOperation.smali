.class public final enum Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMMessagePinInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

.field public static final enum PIN:Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

.field public static final enum UNPIN:Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->PIN:Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->UNPIN:Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    const-string v1, "PIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->PIN:Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    new-instance v0, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    const-string v1, "UNPIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->UNPIN:Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    invoke-static {}, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->$values()[Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->$VALUES:[Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->$VALUES:[Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    return-object v0
.end method
