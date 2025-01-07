.class final enum Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/adapter/EMAREncryptUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "B64_ENCODE_FLAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

.field public static final enum ONESDK_B64_DEFAULT:Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

.field public static final enum ONESDK_B64_NO_WRAP:Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;->ONESDK_B64_DEFAULT:Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;->ONESDK_B64_NO_WRAP:Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    const-string v1, "ONESDK_B64_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;->ONESDK_B64_DEFAULT:Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    const-string v1, "ONESDK_B64_NO_WRAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;->ONESDK_B64_NO_WRAP:Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    invoke-static {}, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;->$values()[Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/adapter/EMAREncryptUtils$B64_ENCODE_FLAG;

    return-object v0
.end method
