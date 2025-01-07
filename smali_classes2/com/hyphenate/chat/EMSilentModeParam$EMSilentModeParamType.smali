.class public final enum Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMSilentModeParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMSilentModeParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

.field public static final enum REMIND_TYPE:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

.field public static final enum SILENT_MODE_DURATION:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

.field public static final enum SILENT_MODE_INTERVAL:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->REMIND_TYPE:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->SILENT_MODE_DURATION:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->SILENT_MODE_INTERVAL:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    const-string v1, "REMIND_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->REMIND_TYPE:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    new-instance v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    const-string v1, "SILENT_MODE_DURATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->SILENT_MODE_DURATION:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    new-instance v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    const-string v1, "SILENT_MODE_INTERVAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->SILENT_MODE_INTERVAL:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    invoke-static {}, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->$values()[Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->$VALUES:[Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->$VALUES:[Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    return-object v0
.end method
