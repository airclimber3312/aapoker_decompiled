.class public final enum Lio/agora/rtc2/Constants$VideoModulePosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoModulePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/Constants$VideoModulePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/Constants$VideoModulePosition;

.field public static final enum VIDEO_MODULE_POSITION_POST_CAPTURER:Lio/agora/rtc2/Constants$VideoModulePosition;

.field public static final enum VIDEO_MODULE_POSITION_POST_CAPTURER_ORIGIN:Lio/agora/rtc2/Constants$VideoModulePosition;

.field public static final enum VIDEO_MODULE_POSITION_PRE_ENCODER:Lio/agora/rtc2/Constants$VideoModulePosition;

.field public static final enum VIDEO_MODULE_POSITION_PRE_RENDERER:Lio/agora/rtc2/Constants$VideoModulePosition;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lio/agora/rtc2/Constants$VideoModulePosition;

    const-string v1, "VIDEO_MODULE_POSITION_POST_CAPTURER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/agora/rtc2/Constants$VideoModulePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/Constants$VideoModulePosition;->VIDEO_MODULE_POSITION_POST_CAPTURER:Lio/agora/rtc2/Constants$VideoModulePosition;

    new-instance v1, Lio/agora/rtc2/Constants$VideoModulePosition;

    const-string v4, "VIDEO_MODULE_POSITION_PRE_RENDERER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/agora/rtc2/Constants$VideoModulePosition;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/Constants$VideoModulePosition;->VIDEO_MODULE_POSITION_PRE_RENDERER:Lio/agora/rtc2/Constants$VideoModulePosition;

    new-instance v4, Lio/agora/rtc2/Constants$VideoModulePosition;

    const-string v6, "VIDEO_MODULE_POSITION_PRE_ENCODER"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lio/agora/rtc2/Constants$VideoModulePosition;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/rtc2/Constants$VideoModulePosition;->VIDEO_MODULE_POSITION_PRE_ENCODER:Lio/agora/rtc2/Constants$VideoModulePosition;

    new-instance v6, Lio/agora/rtc2/Constants$VideoModulePosition;

    const/16 v8, 0x8

    const-string v9, "VIDEO_MODULE_POSITION_POST_CAPTURER_ORIGIN"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v8}, Lio/agora/rtc2/Constants$VideoModulePosition;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/rtc2/Constants$VideoModulePosition;->VIDEO_MODULE_POSITION_POST_CAPTURER_ORIGIN:Lio/agora/rtc2/Constants$VideoModulePosition;

    new-array v7, v7, [Lio/agora/rtc2/Constants$VideoModulePosition;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v10

    sput-object v7, Lio/agora/rtc2/Constants$VideoModulePosition;->$VALUES:[Lio/agora/rtc2/Constants$VideoModulePosition;

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

    iput p3, p0, Lio/agora/rtc2/Constants$VideoModulePosition;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc2/Constants$VideoModulePosition;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget p0, p0, Lio/agora/rtc2/Constants$VideoModulePosition;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/Constants$VideoModulePosition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/Constants$VideoModulePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/Constants$VideoModulePosition;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/Constants$VideoModulePosition;
    .locals 1

    sget-object v0, Lio/agora/rtc2/Constants$VideoModulePosition;->$VALUES:[Lio/agora/rtc2/Constants$VideoModulePosition;

    invoke-virtual {v0}, [Lio/agora/rtc2/Constants$VideoModulePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/Constants$VideoModulePosition;

    return-object v0
.end method
