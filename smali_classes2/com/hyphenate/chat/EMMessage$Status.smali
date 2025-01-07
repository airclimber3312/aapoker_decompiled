.class public final enum Lcom/hyphenate/chat/EMMessage$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMMessage$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMMessage$Status;

.field public static final enum CREATE:Lcom/hyphenate/chat/EMMessage$Status;

.field public static final enum FAIL:Lcom/hyphenate/chat/EMMessage$Status;

.field public static final enum INPROGRESS:Lcom/hyphenate/chat/EMMessage$Status;

.field public static final enum SUCCESS:Lcom/hyphenate/chat/EMMessage$Status;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMMessage$Status;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hyphenate/chat/EMMessage$Status;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Status;->SUCCESS:Lcom/hyphenate/chat/EMMessage$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Status;->FAIL:Lcom/hyphenate/chat/EMMessage$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Status;->INPROGRESS:Lcom/hyphenate/chat/EMMessage$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Status;->CREATE:Lcom/hyphenate/chat/EMMessage$Status;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Status;->SUCCESS:Lcom/hyphenate/chat/EMMessage$Status;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Status;

    const-string v1, "FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Status;->FAIL:Lcom/hyphenate/chat/EMMessage$Status;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Status;

    const-string v1, "INPROGRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Status;->INPROGRESS:Lcom/hyphenate/chat/EMMessage$Status;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$Status;

    const-string v1, "CREATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Status;->CREATE:Lcom/hyphenate/chat/EMMessage$Status;

    invoke-static {}, Lcom/hyphenate/chat/EMMessage$Status;->$values()[Lcom/hyphenate/chat/EMMessage$Status;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMMessage$Status;->$VALUES:[Lcom/hyphenate/chat/EMMessage$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage$Status;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMMessage$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMMessage$Status;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMMessage$Status;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Status;->$VALUES:[Lcom/hyphenate/chat/EMMessage$Status;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMMessage$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMMessage$Status;

    return-object v0
.end method
