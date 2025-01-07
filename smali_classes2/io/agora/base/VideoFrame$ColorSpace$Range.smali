.class public final enum Lio/agora/base/VideoFrame$ColorSpace$Range;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame$ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/VideoFrame$ColorSpace$Range;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Range;

.field public static final enum Derived:Lio/agora/base/VideoFrame$ColorSpace$Range;

.field public static final enum Full:Lio/agora/base/VideoFrame$ColorSpace$Range;

.field public static final enum Invalid:Lio/agora/base/VideoFrame$ColorSpace$Range;

.field public static final enum Limited:Lio/agora/base/VideoFrame$ColorSpace$Range;


# instance fields
.field private final range:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 234
    new-instance v0, Lio/agora/base/VideoFrame$ColorSpace$Range;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/base/VideoFrame$ColorSpace$Range;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/base/VideoFrame$ColorSpace$Range;->Invalid:Lio/agora/base/VideoFrame$ColorSpace$Range;

    .line 235
    new-instance v1, Lio/agora/base/VideoFrame$ColorSpace$Range;

    const-string v3, "Limited"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/base/VideoFrame$ColorSpace$Range;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/base/VideoFrame$ColorSpace$Range;->Limited:Lio/agora/base/VideoFrame$ColorSpace$Range;

    .line 236
    new-instance v3, Lio/agora/base/VideoFrame$ColorSpace$Range;

    const-string v5, "Full"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/base/VideoFrame$ColorSpace$Range;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/base/VideoFrame$ColorSpace$Range;->Full:Lio/agora/base/VideoFrame$ColorSpace$Range;

    .line 237
    new-instance v5, Lio/agora/base/VideoFrame$ColorSpace$Range;

    const-string v7, "Derived"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/agora/base/VideoFrame$ColorSpace$Range;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/base/VideoFrame$ColorSpace$Range;->Derived:Lio/agora/base/VideoFrame$ColorSpace$Range;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/agora/base/VideoFrame$ColorSpace$Range;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 233
    sput-object v7, Lio/agora/base/VideoFrame$ColorSpace$Range;->$VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Range;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    iput p3, p0, Lio/agora/base/VideoFrame$ColorSpace$Range;->range:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/VideoFrame$ColorSpace$Range;
    .locals 1

    .line 233
    const-class v0, Lio/agora/base/VideoFrame$ColorSpace$Range;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/VideoFrame$ColorSpace$Range;

    return-object p0
.end method

.method public static values()[Lio/agora/base/VideoFrame$ColorSpace$Range;
    .locals 1

    .line 233
    sget-object v0, Lio/agora/base/VideoFrame$ColorSpace$Range;->$VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Range;

    invoke-virtual {v0}, [Lio/agora/base/VideoFrame$ColorSpace$Range;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/VideoFrame$ColorSpace$Range;

    return-object v0
.end method


# virtual methods
.method public getRange()I
    .locals 1

    .line 243
    iget v0, p0, Lio/agora/base/VideoFrame$ColorSpace$Range;->range:I

    return v0
.end method
