.class public final enum Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMSearchMessageDirect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

.field public static final enum ALL:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

.field public static final enum RECEIVE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

.field public static final enum SEND:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;


# instance fields
.field private final index:I


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->SEND:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->RECEIVE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->ALL:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    const-string v1, "SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->SEND:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    const-string v1, "RECEIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->RECEIVE:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    new-instance v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    const/4 v1, 0x2

    const/16 v2, 0x64

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->ALL:Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    invoke-static {}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->$values()[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->$VALUES:[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

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

    iput p3, p0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->$VALUES:[Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->index:I

    return v0
.end method
