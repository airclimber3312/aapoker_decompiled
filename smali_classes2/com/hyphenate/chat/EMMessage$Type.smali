.class public final enum Lcom/hyphenate/chat/EMMessage$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum CMD:Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum FILE:Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum TXT:Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

.field public static final enum VOICE:Lcom/hyphenate/chat/EMMessage$Type;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMMessage$Type;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/hyphenate/chat/EMMessage$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "TXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "LOCATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "VOICE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "CMD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "CUSTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Type;

    const-string v1, "COMBINE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {}, Lcom/hyphenate/chat/EMMessage$Type;->$values()[Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Type;->$VALUES:[Lcom/hyphenate/chat/EMMessage$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage$Type;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMMessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMMessage$Type;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->$VALUES:[Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMMessage$Type;

    return-object v0
.end method
