.class public final Lcom/tencent/bugly/proguard/gt$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final te:Lcom/tencent/bugly/proguard/gt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/gt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/gt;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/gt$a;->te:Lcom/tencent/bugly/proguard/gt;

    return-void
.end method

.method public static synthetic fa()Lcom/tencent/bugly/proguard/gt;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/gt$a;->te:Lcom/tencent/bugly/proguard/gt;

    return-object v0
.end method
