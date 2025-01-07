.class public final enum Lcom/tencent/bugly/proguard/jb;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/jb;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/reporter/DiscardReason;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "CACHE_EXPIRE",
        "RETRY_EXCEEDED",
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
.field public static final enum wi:Lcom/tencent/bugly/proguard/jb;

.field public static final enum wj:Lcom/tencent/bugly/proguard/jb;

.field private static final synthetic wk:[Lcom/tencent/bugly/proguard/jb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/tencent/bugly/proguard/jb;

    new-instance v2, Lcom/tencent/bugly/proguard/jb;

    const-string v3, "CACHE_EXPIRE"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/jb;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/bugly/proguard/jb;->wi:Lcom/tencent/bugly/proguard/jb;

    aput-object v2, v1, v4

    new-instance v2, Lcom/tencent/bugly/proguard/jb;

    const-string v3, "RETRY_EXCEEDED"

    invoke-direct {v2, v3, v5, v0}, Lcom/tencent/bugly/proguard/jb;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/bugly/proguard/jb;->wj:Lcom/tencent/bugly/proguard/jb;

    aput-object v2, v1, v5

    sput-object v1, Lcom/tencent/bugly/proguard/jb;->wk:[Lcom/tencent/bugly/proguard/jb;

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

    iput p3, p0, Lcom/tencent/bugly/proguard/jb;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/jb;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/jb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/jb;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/jb;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/jb;->wk:[Lcom/tencent/bugly/proguard/jb;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/jb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/jb;

    return-object v0
.end method
