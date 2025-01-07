.class public final enum Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMPushRemindType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

.field public static final enum ALL:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

.field public static final enum MENTION_ONLY:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

.field public static final enum NONE:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->ALL:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->MENTION_ONLY:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->NONE:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->ALL:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    new-instance v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    const-string v1, "MENTION_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->MENTION_ONLY:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    new-instance v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->NONE:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    invoke-static {}, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->$values()[Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->$VALUES:[Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->$VALUES:[Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    return-object v0
.end method
