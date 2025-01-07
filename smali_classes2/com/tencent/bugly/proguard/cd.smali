.class public final enum Lcom/tencent/bugly/proguard/cd;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/cd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum et:Lcom/tencent/bugly/proguard/cd;

.field private static final synthetic eu:[Lcom/tencent/bugly/proguard/cd;


# instance fields
.field public debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/cd;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/cd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/proguard/cd;->et:Lcom/tencent/bugly/proguard/cd;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tencent/bugly/proguard/cd;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/tencent/bugly/proguard/cd;->eu:[Lcom/tencent/bugly/proguard/cd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/cd;->debugMode:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/cd;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/cd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/cd;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/cd;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/cd;->eu:[Lcom/tencent/bugly/proguard/cd;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/cd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/cd;

    return-object v0
.end method


# virtual methods
.method public final aY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/cd;->debugMode:Z

    return v0
.end method
