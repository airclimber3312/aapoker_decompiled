.class final enum Lcom/tencent/bugly/proguard/fc$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/fc$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum pl:Lcom/tencent/bugly/proguard/fc$b;

.field public static final enum pm:Lcom/tencent/bugly/proguard/fc$b;

.field public static final enum pn:Lcom/tencent/bugly/proguard/fc$b;

.field public static final enum po:Lcom/tencent/bugly/proguard/fc$b;

.field private static final synthetic pp:[Lcom/tencent/bugly/proguard/fc$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/tencent/bugly/proguard/fc$b;

    const-string v1, "WarmUp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/fc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/bugly/proguard/fc$b;->pl:Lcom/tencent/bugly/proguard/fc$b;

    new-instance v1, Lcom/tencent/bugly/proguard/fc$b;

    const-string v3, "CleanUp"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/bugly/proguard/fc$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/bugly/proguard/fc$b;->pm:Lcom/tencent/bugly/proguard/fc$b;

    new-instance v3, Lcom/tencent/bugly/proguard/fc$b;

    const-string v5, "RequestConsuming"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/bugly/proguard/fc$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/bugly/proguard/fc$b;->pn:Lcom/tencent/bugly/proguard/fc$b;

    new-instance v5, Lcom/tencent/bugly/proguard/fc$b;

    const-string v7, "DiskUsage"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/bugly/proguard/fc$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/bugly/proguard/fc$b;->po:Lcom/tencent/bugly/proguard/fc$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tencent/bugly/proguard/fc$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tencent/bugly/proguard/fc$b;->pp:[Lcom/tencent/bugly/proguard/fc$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/fc$b;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/fc$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/fc$b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/fc$b;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/fc$b;->pp:[Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/fc$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/fc$b;

    return-object v0
.end method
