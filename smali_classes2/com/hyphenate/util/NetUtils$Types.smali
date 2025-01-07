.class public final enum Lcom/hyphenate/util/NetUtils$Types;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/util/NetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Types"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/util/NetUtils$Types;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/util/NetUtils$Types;

.field public static final enum ETHERNET:Lcom/hyphenate/util/NetUtils$Types;

.field public static final enum MOBILE:Lcom/hyphenate/util/NetUtils$Types;

.field public static final enum NONE:Lcom/hyphenate/util/NetUtils$Types;

.field public static final enum OTHERS:Lcom/hyphenate/util/NetUtils$Types;

.field public static final enum WIFI:Lcom/hyphenate/util/NetUtils$Types;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/util/NetUtils$Types;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hyphenate/util/NetUtils$Types;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/util/NetUtils$Types;->NONE:Lcom/hyphenate/util/NetUtils$Types;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/util/NetUtils$Types;->WIFI:Lcom/hyphenate/util/NetUtils$Types;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/util/NetUtils$Types;->MOBILE:Lcom/hyphenate/util/NetUtils$Types;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/util/NetUtils$Types;->ETHERNET:Lcom/hyphenate/util/NetUtils$Types;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/util/NetUtils$Types;->OTHERS:Lcom/hyphenate/util/NetUtils$Types;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/util/NetUtils$Types;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/util/NetUtils$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/util/NetUtils$Types;->NONE:Lcom/hyphenate/util/NetUtils$Types;

    new-instance v0, Lcom/hyphenate/util/NetUtils$Types;

    const-string v1, "WIFI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/util/NetUtils$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/util/NetUtils$Types;->WIFI:Lcom/hyphenate/util/NetUtils$Types;

    new-instance v0, Lcom/hyphenate/util/NetUtils$Types;

    const-string v1, "MOBILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/util/NetUtils$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/util/NetUtils$Types;->MOBILE:Lcom/hyphenate/util/NetUtils$Types;

    new-instance v0, Lcom/hyphenate/util/NetUtils$Types;

    const-string v1, "ETHERNET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/util/NetUtils$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/util/NetUtils$Types;->ETHERNET:Lcom/hyphenate/util/NetUtils$Types;

    new-instance v0, Lcom/hyphenate/util/NetUtils$Types;

    const-string v1, "OTHERS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/util/NetUtils$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/util/NetUtils$Types;->OTHERS:Lcom/hyphenate/util/NetUtils$Types;

    invoke-static {}, Lcom/hyphenate/util/NetUtils$Types;->$values()[Lcom/hyphenate/util/NetUtils$Types;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/util/NetUtils$Types;->$VALUES:[Lcom/hyphenate/util/NetUtils$Types;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/util/NetUtils$Types;
    .locals 1

    const-class v0, Lcom/hyphenate/util/NetUtils$Types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/util/NetUtils$Types;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/util/NetUtils$Types;
    .locals 1

    sget-object v0, Lcom/hyphenate/util/NetUtils$Types;->$VALUES:[Lcom/hyphenate/util/NetUtils$Types;

    invoke-virtual {v0}, [Lcom/hyphenate/util/NetUtils$Types;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/util/NetUtils$Types;

    return-object v0
.end method
