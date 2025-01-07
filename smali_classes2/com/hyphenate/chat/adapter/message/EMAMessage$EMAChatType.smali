.class public final enum Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMAChatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

.field public static final enum CHATROOM:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

.field public static final enum GROUP:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

.field public static final enum SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->GROUP:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->CHATROOM:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    const-string v1, "GROUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->GROUP:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    const-string v1, "CHATROOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->CHATROOM:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    invoke-static {}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->$values()[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->$VALUES:[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->$VALUES:[Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    return-object v0
.end method
