.class public final enum Lcom/tencent/bugly/proguard/hn$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/hn$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum uw:Lcom/tencent/bugly/proguard/hn$a;

.field public static final enum ux:Lcom/tencent/bugly/proguard/hn$a;

.field private static final synthetic uy:[Lcom/tencent/bugly/proguard/hn$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/bugly/proguard/hn$a;

    const-string v1, "FROM_LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/hn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/bugly/proguard/hn$a;->uw:Lcom/tencent/bugly/proguard/hn$a;

    new-instance v1, Lcom/tencent/bugly/proguard/hn$a;

    const-string v3, "FROM_SERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/bugly/proguard/hn$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/bugly/proguard/hn$a;->ux:Lcom/tencent/bugly/proguard/hn$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tencent/bugly/proguard/hn$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tencent/bugly/proguard/hn$a;->uy:[Lcom/tencent/bugly/proguard/hn$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hn$a;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/hn$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/hn$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/hn$a;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/hn$a;->uy:[Lcom/tencent/bugly/proguard/hn$a;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/hn$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/hn$a;

    return-object v0
.end method
