.class public final Lcom/tencent/bugly/proguard/pd$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final EC:Lcom/tencent/bugly/proguard/pd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/pd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/pd;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/pd$a;->EC:Lcom/tencent/bugly/proguard/pd;

    return-void
.end method

.method public static synthetic it()Lcom/tencent/bugly/proguard/pd;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/pd$a;->EC:Lcom/tencent/bugly/proguard/pd;

    return-object v0
.end method
