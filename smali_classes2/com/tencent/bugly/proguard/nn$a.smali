.class public final enum Lcom/tencent/bugly/proguard/nn$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/nn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/nn$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BD:Lcom/tencent/bugly/proguard/nn$a;

.field public static final enum BE:Lcom/tencent/bugly/proguard/nn$a;

.field public static final enum BF:Lcom/tencent/bugly/proguard/nn$a;

.field private static final synthetic BG:[Lcom/tencent/bugly/proguard/nn$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/bugly/proguard/nn$a;

    const-string v1, "FROM_ON_APPLICATION_CREATE_TIME_OUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/nn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/bugly/proguard/nn$a;->BD:Lcom/tencent/bugly/proguard/nn$a;

    new-instance v1, Lcom/tencent/bugly/proguard/nn$a;

    const-string v3, "FROM_WARM_LAUNCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/bugly/proguard/nn$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/bugly/proguard/nn$a;->BE:Lcom/tencent/bugly/proguard/nn$a;

    new-instance v3, Lcom/tencent/bugly/proguard/nn$a;

    const-string v5, "FROM_APP_FULL_LAUNCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/bugly/proguard/nn$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/bugly/proguard/nn$a;->BF:Lcom/tencent/bugly/proguard/nn$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/bugly/proguard/nn$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/bugly/proguard/nn$a;->BG:[Lcom/tencent/bugly/proguard/nn$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/nn$a;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/nn$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/nn$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/nn$a;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/nn$a;->BG:[Lcom/tencent/bugly/proguard/nn$a;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/nn$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/nn$a;

    return-object v0
.end method
