.class public final enum Lcom/tencent/bugly/proguard/nm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/nm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bl:Lcom/tencent/bugly/proguard/nm;

.field public static final enum Bm:Lcom/tencent/bugly/proguard/nm;

.field public static final enum Bn:Lcom/tencent/bugly/proguard/nm;

.field public static final enum Bo:Lcom/tencent/bugly/proguard/nm;

.field public static final enum Bp:Lcom/tencent/bugly/proguard/nm;

.field public static final enum Bq:Lcom/tencent/bugly/proguard/nm;

.field private static final synthetic Br:[Lcom/tencent/bugly/proguard/nm;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/tencent/bugly/proguard/nm;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/nm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/bugly/proguard/nm;->Bl:Lcom/tencent/bugly/proguard/nm;

    new-instance v1, Lcom/tencent/bugly/proguard/nm;

    const-string v3, "APP_LAUNCH_BY_ACTIVITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/bugly/proguard/nm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/bugly/proguard/nm;->Bm:Lcom/tencent/bugly/proguard/nm;

    new-instance v3, Lcom/tencent/bugly/proguard/nm;

    const-string v5, "APP_LAUNCH_BY_SERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/bugly/proguard/nm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/bugly/proguard/nm;->Bn:Lcom/tencent/bugly/proguard/nm;

    new-instance v5, Lcom/tencent/bugly/proguard/nm;

    const-string v7, "APP_LAUNCH_BY_BROADCAST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/bugly/proguard/nm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/bugly/proguard/nm;->Bo:Lcom/tencent/bugly/proguard/nm;

    new-instance v7, Lcom/tencent/bugly/proguard/nm;

    const-string v9, "APP_LAUNCH_BY_CONTENT_PROVIDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/bugly/proguard/nm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/bugly/proguard/nm;->Bp:Lcom/tencent/bugly/proguard/nm;

    new-instance v9, Lcom/tencent/bugly/proguard/nm;

    const-string v11, "APP_LAUNCH_BY_OTHER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/bugly/proguard/nm;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/bugly/proguard/nm;->Bq:Lcom/tencent/bugly/proguard/nm;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/tencent/bugly/proguard/nm;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/tencent/bugly/proguard/nm;->Br:[Lcom/tencent/bugly/proguard/nm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/nm;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/nm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/nm;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/nm;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Br:[Lcom/tencent/bugly/proguard/nm;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/nm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/nm;

    return-object v0
.end method
