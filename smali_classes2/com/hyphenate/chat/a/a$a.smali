.class public final enum Lcom/hyphenate/chat/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/hyphenate/chat/a/a$a;

.field public static final enum b:Lcom/hyphenate/chat/a/a$a;

.field public static final enum c:Lcom/hyphenate/chat/a/a$a;

.field private static final synthetic d:[Lcom/hyphenate/chat/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/a/a$a;

    const-string v1, "EMSandboxMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/a/a$a;->a:Lcom/hyphenate/chat/a/a$a;

    new-instance v0, Lcom/hyphenate/chat/a/a$a;

    const-string v1, "EMProductMode"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/a/a$a;->b:Lcom/hyphenate/chat/a/a$a;

    new-instance v0, Lcom/hyphenate/chat/a/a$a;

    const-string v1, "EMDevMode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/a/a$a;->c:Lcom/hyphenate/chat/a/a$a;

    invoke-static {}, Lcom/hyphenate/chat/a/a$a;->a()[Lcom/hyphenate/chat/a/a$a;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/a/a$a;->d:[Lcom/hyphenate/chat/a/a$a;

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

.method private static synthetic a()[Lcom/hyphenate/chat/a/a$a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyphenate/chat/a/a$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/a/a$a;->a:Lcom/hyphenate/chat/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/a/a$a;->b:Lcom/hyphenate/chat/a/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/a/a$a;->c:Lcom/hyphenate/chat/a/a$a;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/a/a$a;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/a/a$a;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/a/a$a;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/a/a$a;->d:[Lcom/hyphenate/chat/a/a$a;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/a/a$a;

    return-object v0
.end method
