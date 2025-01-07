.class final Lcom/tencent/bugly/proguard/ra$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final HM:Lcom/tencent/bugly/proguard/ra;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/ra;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ra;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ra$a;->HM:Lcom/tencent/bugly/proguard/ra;

    return-void
.end method

.method static synthetic jr()Lcom/tencent/bugly/proguard/ra;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ra$a;->HM:Lcom/tencent/bugly/proguard/ra;

    return-object v0
.end method
