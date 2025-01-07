.class public final Lcom/tencent/bugly/proguard/nl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/nl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final Bk:Lcom/tencent/bugly/proguard/nl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/nl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/nl;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/nl$a;->Bk:Lcom/tencent/bugly/proguard/nl;

    return-void
.end method

.method public static synthetic hv()Lcom/tencent/bugly/proguard/nl;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/nl$a;->Bk:Lcom/tencent/bugly/proguard/nl;

    return-object v0
.end method
