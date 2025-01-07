.class public final Lcom/tencent/bugly/proguard/aa$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final az:Lcom/tencent/bugly/proguard/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/aa;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/aa;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aa$a;->az:Lcom/tencent/bugly/proguard/aa;

    return-void
.end method

.method public static synthetic C()Lcom/tencent/bugly/proguard/aa;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/aa$a;->az:Lcom/tencent/bugly/proguard/aa;

    return-object v0
.end method
