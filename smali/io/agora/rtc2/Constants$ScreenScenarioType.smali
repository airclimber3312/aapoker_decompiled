.class public final enum Lio/agora/rtc2/Constants$ScreenScenarioType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenScenarioType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/Constants$ScreenScenarioType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/Constants$ScreenScenarioType;

.field public static final enum SCREEN_SCENARIO_DOCUMENT:Lio/agora/rtc2/Constants$ScreenScenarioType;

.field public static final enum SCREEN_SCENARIO_GAMING:Lio/agora/rtc2/Constants$ScreenScenarioType;

.field public static final enum SCREEN_SCENARIO_VIDEO:Lio/agora/rtc2/Constants$ScreenScenarioType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lio/agora/rtc2/Constants$ScreenScenarioType;

    const-string v1, "SCREEN_SCENARIO_DOCUMENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/agora/rtc2/Constants$ScreenScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/Constants$ScreenScenarioType;->SCREEN_SCENARIO_DOCUMENT:Lio/agora/rtc2/Constants$ScreenScenarioType;

    new-instance v1, Lio/agora/rtc2/Constants$ScreenScenarioType;

    const-string v4, "SCREEN_SCENARIO_GAMING"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/agora/rtc2/Constants$ScreenScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/Constants$ScreenScenarioType;->SCREEN_SCENARIO_GAMING:Lio/agora/rtc2/Constants$ScreenScenarioType;

    new-instance v4, Lio/agora/rtc2/Constants$ScreenScenarioType;

    const-string v6, "SCREEN_SCENARIO_VIDEO"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/agora/rtc2/Constants$ScreenScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/rtc2/Constants$ScreenScenarioType;->SCREEN_SCENARIO_VIDEO:Lio/agora/rtc2/Constants$ScreenScenarioType;

    new-array v6, v7, [Lio/agora/rtc2/Constants$ScreenScenarioType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lio/agora/rtc2/Constants$ScreenScenarioType;->$VALUES:[Lio/agora/rtc2/Constants$ScreenScenarioType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/agora/rtc2/Constants$ScreenScenarioType;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc2/Constants$ScreenScenarioType;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget p0, p0, Lio/agora/rtc2/Constants$ScreenScenarioType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/Constants$ScreenScenarioType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/Constants$ScreenScenarioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/Constants$ScreenScenarioType;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/Constants$ScreenScenarioType;
    .locals 1

    sget-object v0, Lio/agora/rtc2/Constants$ScreenScenarioType;->$VALUES:[Lio/agora/rtc2/Constants$ScreenScenarioType;

    invoke-virtual {v0}, [Lio/agora/rtc2/Constants$ScreenScenarioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/Constants$ScreenScenarioType;

    return-object v0
.end method
