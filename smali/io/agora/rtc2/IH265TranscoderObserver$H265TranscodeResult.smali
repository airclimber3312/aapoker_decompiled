.class public final enum Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/IH265TranscoderObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "H265TranscodeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum CONFLICTED:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum FORBIDDEN:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum NOT_FOUND:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum NOT_SUPPORTED:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum REQUEST_INVALID:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum SERVER_INTERNAL_ERROR:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum SERVICE_UNAVAILABLE:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum SUCCESS:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum TOKEN_EXPIRED:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum TOO_OFTEN:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum UNAUTHORIZED:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

.field public static final enum UNKNOWN:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->UNKNOWN:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v1, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v2, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->SUCCESS:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v2, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v5, "REQUEST_INVALID"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->REQUEST_INVALID:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v5, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v7, "UNAUTHORIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->UNAUTHORIZED:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v7, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v9, "TOKEN_EXPIRED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->TOKEN_EXPIRED:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v9, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v11, "FORBIDDEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->FORBIDDEN:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v11, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v13, "NOT_FOUND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->NOT_FOUND:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v13, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v15, "CONFLICTED"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->CONFLICTED:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v15, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v14, "NOT_SUPPORTED"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->NOT_SUPPORTED:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v14, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v12, "TOO_OFTEN"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->TOO_OFTEN:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v12, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v10, "SERVER_INTERNAL_ERROR"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->SERVER_INTERNAL_ERROR:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    new-instance v10, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const-string v8, "SERVICE_UNAVAILABLE"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->SERVICE_UNAVAILABLE:Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    const/16 v8, 0xc

    new-array v8, v8, [Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    aput-object v0, v8, v3

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    aput-object v12, v8, v6

    aput-object v10, v8, v4

    sput-object v8, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->$VALUES:[Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

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

    iput p3, p0, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->value:I

    return-void
.end method

.method public static fromInt(I)Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->values()[Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;
    .locals 1

    sget-object v0, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->$VALUES:[Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    invoke-virtual {v0}, [Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;->value:I

    return v0
.end method
