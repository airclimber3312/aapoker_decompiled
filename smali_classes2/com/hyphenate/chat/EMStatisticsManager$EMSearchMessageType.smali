.class public final enum Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMSearchMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum ALL:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum CMD:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum CUSTOM:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum FILE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum IMAGE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum LOCATION:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum TXT:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum VIDEO:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

.field public static final enum VOICE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;


# instance fields
.field private final index:I


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->TXT:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->IMAGE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->VIDEO:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->LOCATION:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->VOICE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->FILE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->CMD:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->CUSTOM:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->ALL:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const-string v1, "TXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->TXT:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->IMAGE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->VIDEO:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const-string v1, "LOCATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->LOCATION:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const-string v1, "VOICE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->VOICE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const-string v1, "FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->FILE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const-string v1, "CMD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->CMD:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->CUSTOM:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    const/16 v1, 0x8

    const/16 v2, 0x64

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->ALL:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    invoke-static {}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->$values()[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->$VALUES:[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

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

    iput p3, p0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->$VALUES:[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->index:I

    return v0
.end method
