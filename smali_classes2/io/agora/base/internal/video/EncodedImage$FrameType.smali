.class public final enum Lio/agora/base/internal/video/EncodedImage$FrameType;
.super Ljava/lang/Enum;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/EncodedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/EncodedImage$FrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/EncodedImage$FrameType;

.field public static final enum EmptyFrame:Lio/agora/base/internal/video/EncodedImage$FrameType;

.field public static final enum VideoFrameDelta:Lio/agora/base/internal/video/EncodedImage$FrameType;

.field public static final enum VideoFrameKey:Lio/agora/base/internal/video/EncodedImage$FrameType;


# instance fields
.field private final nativeIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lio/agora/base/internal/video/EncodedImage$FrameType;

    const-string v1, "EmptyFrame"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/base/internal/video/EncodedImage$FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/base/internal/video/EncodedImage$FrameType;->EmptyFrame:Lio/agora/base/internal/video/EncodedImage$FrameType;

    .line 25
    new-instance v1, Lio/agora/base/internal/video/EncodedImage$FrameType;

    const-string v3, "VideoFrameKey"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v1, v3, v4, v5}, Lio/agora/base/internal/video/EncodedImage$FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/base/internal/video/EncodedImage$FrameType;->VideoFrameKey:Lio/agora/base/internal/video/EncodedImage$FrameType;

    .line 26
    new-instance v3, Lio/agora/base/internal/video/EncodedImage$FrameType;

    const/4 v6, 0x4

    const-string v7, "VideoFrameDelta"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v6}, Lio/agora/base/internal/video/EncodedImage$FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/base/internal/video/EncodedImage$FrameType;->VideoFrameDelta:Lio/agora/base/internal/video/EncodedImage$FrameType;

    new-array v5, v5, [Lio/agora/base/internal/video/EncodedImage$FrameType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v8

    .line 23
    sput-object v5, Lio/agora/base/internal/video/EncodedImage$FrameType;->$VALUES:[Lio/agora/base/internal/video/EncodedImage$FrameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lio/agora/base/internal/video/EncodedImage$FrameType;->nativeIndex:I

    return-void
.end method

.method static fromNativeIndex(I)Lio/agora/base/internal/video/EncodedImage$FrameType;
    .locals 5

    .line 40
    invoke-static {}, Lio/agora/base/internal/video/EncodedImage$FrameType;->values()[Lio/agora/base/internal/video/EncodedImage$FrameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 41
    invoke-virtual {v3}, Lio/agora/base/internal/video/EncodedImage$FrameType;->getNative()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown native frame type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/EncodedImage$FrameType;
    .locals 1

    .line 23
    const-class v0, Lio/agora/base/internal/video/EncodedImage$FrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/EncodedImage$FrameType;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/EncodedImage$FrameType;
    .locals 1

    .line 23
    sget-object v0, Lio/agora/base/internal/video/EncodedImage$FrameType;->$VALUES:[Lio/agora/base/internal/video/EncodedImage$FrameType;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/EncodedImage$FrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/EncodedImage$FrameType;

    return-object v0
.end method


# virtual methods
.method public getNative()I
    .locals 1

    .line 35
    iget v0, p0, Lio/agora/base/internal/video/EncodedImage$FrameType;->nativeIndex:I

    return v0
.end method
