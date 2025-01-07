.class public final enum Lio/agora/base/VideoFrame$TextureBuffer$ContextType;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/VideoFrame$TextureBuffer$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

.field public static final enum EGL_CONTEXT_10:Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

.field public static final enum EGL_CONTEXT_14:Lio/agora/base/VideoFrame$TextureBuffer$ContextType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 195
    new-instance v0, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    const-string v1, "EGL_CONTEXT_10"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->EGL_CONTEXT_10:Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    .line 196
    new-instance v1, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    const-string v3, "EGL_CONTEXT_14"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->EGL_CONTEXT_14:Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 194
    sput-object v3, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->$VALUES:[Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/VideoFrame$TextureBuffer$ContextType;
    .locals 1

    .line 194
    const-class v0, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    return-object p0
.end method

.method public static values()[Lio/agora/base/VideoFrame$TextureBuffer$ContextType;
    .locals 1

    .line 194
    sget-object v0, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->$VALUES:[Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    invoke-virtual {v0}, [Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    return-object v0
.end method
