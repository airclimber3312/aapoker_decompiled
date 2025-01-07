.class public final enum Lcom/tencent/bugly/proguard/hu;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/hu;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/db/DBDataStatus;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "TO_SEND",
        "SENT",
        "SENT_FAIL",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final enum uF:Lcom/tencent/bugly/proguard/hu;

.field public static final enum uG:Lcom/tencent/bugly/proguard/hu;

.field public static final enum uH:Lcom/tencent/bugly/proguard/hu;

.field private static final synthetic uI:[Lcom/tencent/bugly/proguard/hu;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/tencent/bugly/proguard/hu;

    new-instance v2, Lcom/tencent/bugly/proguard/hu;

    const-string v3, "TO_SEND"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/hu;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/bugly/proguard/hu;->uF:Lcom/tencent/bugly/proguard/hu;

    aput-object v2, v1, v4

    new-instance v2, Lcom/tencent/bugly/proguard/hu;

    const-string v3, "SENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/tencent/bugly/proguard/hu;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/bugly/proguard/hu;->uG:Lcom/tencent/bugly/proguard/hu;

    aput-object v2, v1, v5

    new-instance v2, Lcom/tencent/bugly/proguard/hu;

    const-string v3, "SENT_FAIL"

    invoke-direct {v2, v3, v4, v0}, Lcom/tencent/bugly/proguard/hu;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/bugly/proguard/hu;->uH:Lcom/tencent/bugly/proguard/hu;

    aput-object v2, v1, v4

    sput-object v1, Lcom/tencent/bugly/proguard/hu;->uI:[Lcom/tencent/bugly/proguard/hu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/bugly/proguard/hu;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hu;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/hu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/hu;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/hu;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/hu;->uI:[Lcom/tencent/bugly/proguard/hu;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/hu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/hu;

    return-object v0
.end method
