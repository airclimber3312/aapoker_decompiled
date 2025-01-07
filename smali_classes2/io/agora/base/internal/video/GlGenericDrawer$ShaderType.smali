.class public final enum Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;
.super Ljava/lang/Enum;
.source "GlGenericDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/GlGenericDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

.field public static final enum ALPHA:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

.field public static final enum OES:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

.field public static final enum OESA:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

.field public static final enum RGB:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

.field public static final enum RGBA:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

.field public static final enum YUV:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 38
    new-instance v0, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    const-string v1, "OES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->OES:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    new-instance v1, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    const-string v3, "RGB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->RGB:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    new-instance v3, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    const-string v5, "YUV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->YUV:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    new-instance v5, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    const-string v7, "ALPHA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->ALPHA:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    new-instance v7, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    const-string v9, "OESA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->OESA:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    new-instance v9, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    const-string v11, "RGBA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->RGBA:Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->$VALUES:[Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;
    .locals 1

    .line 38
    const-class v0, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;
    .locals 1

    .line 38
    sget-object v0, Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->$VALUES:[Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/GlGenericDrawer$ShaderType;

    return-object v0
.end method
