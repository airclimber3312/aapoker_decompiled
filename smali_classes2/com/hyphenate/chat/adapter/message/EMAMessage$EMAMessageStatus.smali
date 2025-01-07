.class public final enum Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMAMessageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

.field public static final enum DELIVERING:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

.field public static final enum FAIL:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

.field public static final enum NEW:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

.field public static final enum SUCCESS:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->NEW:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->DELIVERING:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->SUCCESS:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->FAIL:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->NEW:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    const-string v1, "DELIVERING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->DELIVERING:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->SUCCESS:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    const-string v1, "FAIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->FAIL:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    invoke-static {}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->$values()[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->$VALUES:[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->$VALUES:[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    return-object v0
.end method
