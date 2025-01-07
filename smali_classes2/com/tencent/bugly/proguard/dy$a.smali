.class public final Lcom/tencent/bugly/proguard/dy$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/dy$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final kA:I = 0x8

.field public static final kB:I = 0x9

.field private static final synthetic kC:[I

.field public static final kt:I = 0x1

.field public static final ku:I = 0x2

.field public static final kv:I = 0x3

.field public static final kw:I = 0x4

.field public static final kx:I = 0x5

.field public static final ky:I = 0x6

.field public static final kz:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v2, v1, v3

    aput v0, v1, v2

    sput-object v1, Lcom/tencent/bugly/proguard/dy$a;->kC:[I

    return-void
.end method
