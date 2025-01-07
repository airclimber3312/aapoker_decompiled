.class public final Lcom/tencent/bugly/proguard/lb$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final zw:Lcom/tencent/bugly/proguard/lb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/lb;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/lb;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/lb$a;->zw:Lcom/tencent/bugly/proguard/lb;

    return-void
.end method

.method public static synthetic gI()Lcom/tencent/bugly/proguard/lb;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/lb$a;->zw:Lcom/tencent/bugly/proguard/lb;

    return-object v0
.end method
