.class public final enum Lio/agora/base/VideoFrame$TextureBuffer$Type;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/VideoFrame$TextureBuffer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/VideoFrame$TextureBuffer$Type;

.field public static final enum OES:Lio/agora/base/VideoFrame$TextureBuffer$Type;

.field public static final enum RGB:Lio/agora/base/VideoFrame$TextureBuffer$Type;


# instance fields
.field private final glTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 177
    new-instance v0, Lio/agora/base/VideoFrame$TextureBuffer$Type;

    const v1, 0x8d65

    const-string v2, "OES"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/agora/base/VideoFrame$TextureBuffer$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/base/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    .line 181
    new-instance v1, Lio/agora/base/VideoFrame$TextureBuffer$Type;

    const/16 v2, 0xde1

    const-string v4, "RGB"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/agora/base/VideoFrame$TextureBuffer$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/base/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    const/4 v2, 0x2

    new-array v2, v2, [Lio/agora/base/VideoFrame$TextureBuffer$Type;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 173
    sput-object v2, Lio/agora/base/VideoFrame$TextureBuffer$Type;->$VALUES:[Lio/agora/base/VideoFrame$TextureBuffer$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput p3, p0, Lio/agora/base/VideoFrame$TextureBuffer$Type;->glTarget:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/VideoFrame$TextureBuffer$Type;
    .locals 1

    .line 173
    const-class v0, Lio/agora/base/VideoFrame$TextureBuffer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/VideoFrame$TextureBuffer$Type;

    return-object p0
.end method

.method public static values()[Lio/agora/base/VideoFrame$TextureBuffer$Type;
    .locals 1

    .line 173
    sget-object v0, Lio/agora/base/VideoFrame$TextureBuffer$Type;->$VALUES:[Lio/agora/base/VideoFrame$TextureBuffer$Type;

    invoke-virtual {v0}, [Lio/agora/base/VideoFrame$TextureBuffer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/VideoFrame$TextureBuffer$Type;

    return-object v0
.end method


# virtual methods
.method public getGlTarget()I
    .locals 1

    .line 190
    iget v0, p0, Lio/agora/base/VideoFrame$TextureBuffer$Type;->glTarget:I

    return v0
.end method
