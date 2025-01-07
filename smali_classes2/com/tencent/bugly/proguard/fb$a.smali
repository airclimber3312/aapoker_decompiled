.class public final Lcom/tencent/bugly/proguard/fb$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/fb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final oS:I = 0x1

.field public static final oT:I = 0x2

.field public static final oU:I = 0x3

.field public static final oV:I = 0x4

.field public static final oW:I = 0x5

.field public static final oX:I = 0x6

.field public static final oY:I = 0x7

.field private static final synthetic oZ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

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

    aput v0, v1, v2

    sput-object v1, Lcom/tencent/bugly/proguard/fb$a;->oZ:[I

    return-void
.end method
