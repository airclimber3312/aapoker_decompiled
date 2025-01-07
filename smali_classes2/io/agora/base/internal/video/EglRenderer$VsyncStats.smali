.class final enum Lio/agora/base/internal/video/EglRenderer$VsyncStats;
.super Ljava/lang/Enum;
.source "EglRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VsyncStats"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/EglRenderer$VsyncStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/EglRenderer$VsyncStats;

.field public static final enum DELAY:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

.field public static final enum NORMAL:Lio/agora/base/internal/video/EglRenderer$VsyncStats;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 166
    new-instance v0, Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/base/internal/video/EglRenderer$VsyncStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/base/internal/video/EglRenderer$VsyncStats;->NORMAL:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    new-instance v1, Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    const-string v3, "DELAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/base/internal/video/EglRenderer$VsyncStats;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/base/internal/video/EglRenderer$VsyncStats;->DELAY:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/agora/base/internal/video/EglRenderer$VsyncStats;->$VALUES:[Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/EglRenderer$VsyncStats;
    .locals 1

    .line 166
    const-class v0, Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/EglRenderer$VsyncStats;
    .locals 1

    .line 166
    sget-object v0, Lio/agora/base/internal/video/EglRenderer$VsyncStats;->$VALUES:[Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/EglRenderer$VsyncStats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    return-object v0
.end method
