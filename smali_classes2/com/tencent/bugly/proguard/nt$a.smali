.class public final Lcom/tencent/bugly/proguard/nt$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/nt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/nt$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final Ce:I = 0x1

.field public static final Cf:I = 0x2

.field public static final Cg:I = 0x3

.field private static final synthetic Ch:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    aput v0, v1, v2

    sput-object v1, Lcom/tencent/bugly/proguard/nt$a;->Ch:[I

    return-void
.end method
