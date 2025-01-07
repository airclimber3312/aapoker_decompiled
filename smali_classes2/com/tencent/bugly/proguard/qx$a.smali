.class public final Lcom/tencent/bugly/proguard/qx$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/qx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final HE:Lcom/tencent/bugly/proguard/qx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/qx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/qx;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/qx$a;->HE:Lcom/tencent/bugly/proguard/qx;

    return-void
.end method

.method public static synthetic jh()Lcom/tencent/bugly/proguard/qx;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/qx$a;->HE:Lcom/tencent/bugly/proguard/qx;

    return-object v0
.end method
