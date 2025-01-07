.class public final Lcom/tencent/bugly/proguard/gf$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final sl:Lcom/tencent/bugly/proguard/gf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/gf;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/gf;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/gf$a;->sl:Lcom/tencent/bugly/proguard/gf;

    return-void
.end method

.method public static synthetic eR()Lcom/tencent/bugly/proguard/gf;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/gf$a;->sl:Lcom/tencent/bugly/proguard/gf;

    return-object v0
.end method
