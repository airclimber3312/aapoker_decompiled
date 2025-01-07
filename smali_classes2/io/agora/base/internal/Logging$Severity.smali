.class public final enum Lio/agora/base/internal/Logging$Severity;
.super Ljava/lang/Enum;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/Logging$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/Logging$Severity;

.field public static final enum LS_ERROR:Lio/agora/base/internal/Logging$Severity;

.field public static final enum LS_INFO:Lio/agora/base/internal/Logging$Severity;

.field public static final enum LS_NONE:Lio/agora/base/internal/Logging$Severity;

.field public static final enum LS_SENSITIVE:Lio/agora/base/internal/Logging$Severity;

.field public static final enum LS_VERBOSE:Lio/agora/base/internal/Logging$Severity;

.field public static final enum LS_WARNING:Lio/agora/base/internal/Logging$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 91
    new-instance v0, Lio/agora/base/internal/Logging$Severity;

    const-string v1, "LS_SENSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/base/internal/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/base/internal/Logging$Severity;->LS_SENSITIVE:Lio/agora/base/internal/Logging$Severity;

    new-instance v1, Lio/agora/base/internal/Logging$Severity;

    const-string v3, "LS_VERBOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/base/internal/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/base/internal/Logging$Severity;->LS_VERBOSE:Lio/agora/base/internal/Logging$Severity;

    new-instance v3, Lio/agora/base/internal/Logging$Severity;

    const-string v5, "LS_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/agora/base/internal/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/base/internal/Logging$Severity;->LS_INFO:Lio/agora/base/internal/Logging$Severity;

    new-instance v5, Lio/agora/base/internal/Logging$Severity;

    const-string v7, "LS_WARNING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/agora/base/internal/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/agora/base/internal/Logging$Severity;->LS_WARNING:Lio/agora/base/internal/Logging$Severity;

    new-instance v7, Lio/agora/base/internal/Logging$Severity;

    const-string v9, "LS_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/agora/base/internal/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/agora/base/internal/Logging$Severity;->LS_ERROR:Lio/agora/base/internal/Logging$Severity;

    new-instance v9, Lio/agora/base/internal/Logging$Severity;

    const-string v11, "LS_NONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/agora/base/internal/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/agora/base/internal/Logging$Severity;->LS_NONE:Lio/agora/base/internal/Logging$Severity;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/agora/base/internal/Logging$Severity;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lio/agora/base/internal/Logging$Severity;->$VALUES:[Lio/agora/base/internal/Logging$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/Logging$Severity;
    .locals 1

    .line 91
    const-class v0, Lio/agora/base/internal/Logging$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/Logging$Severity;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/Logging$Severity;
    .locals 1

    .line 91
    sget-object v0, Lio/agora/base/internal/Logging$Severity;->$VALUES:[Lio/agora/base/internal/Logging$Severity;

    invoke-virtual {v0}, [Lio/agora/base/internal/Logging$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/Logging$Severity;

    return-object v0
.end method
