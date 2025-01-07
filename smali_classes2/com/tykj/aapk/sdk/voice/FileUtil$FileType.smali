.class public final enum Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;
.super Ljava/lang/Enum;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tykj/aapk/sdk/voice/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

.field public static final enum AUDIO:Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

.field public static final enum FILE:Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

.field public static final enum IMG:Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

.field public static final enum VIDEO:Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 361
    new-instance v0, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    const-string v1, "IMG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;->IMG:Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    .line 362
    new-instance v1, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    const-string v3, "AUDIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;->AUDIO:Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    .line 363
    new-instance v3, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;->VIDEO:Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    .line 364
    new-instance v5, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    const-string v7, "FILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;->FILE:Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 360
    sput-object v7, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;->$VALUES:[Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 360
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;
    .locals 1

    .line 360
    const-class v0, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    return-object p0
.end method

.method public static values()[Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;
    .locals 1

    .line 360
    sget-object v0, Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;->$VALUES:[Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    invoke-virtual {v0}, [Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tykj/aapk/sdk/voice/FileUtil$FileType;

    return-object v0
.end method
