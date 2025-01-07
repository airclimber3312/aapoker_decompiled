.class public final Lcom/tencent/bugly/proguard/dn$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final iR:Lcom/tencent/bugly/proguard/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/dn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/dn;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/dn$a;->iR:Lcom/tencent/bugly/proguard/dn;

    return-void
.end method

.method public static synthetic cH()Lcom/tencent/bugly/proguard/dn;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/dn$a;->iR:Lcom/tencent/bugly/proguard/dn;

    return-object v0
.end method
