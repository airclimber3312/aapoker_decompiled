.class public final Lcom/tencent/bugly/proguard/qy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/qy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final HH:Lcom/tencent/bugly/proguard/qy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/qy;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qy;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/qy$a;->HH:Lcom/tencent/bugly/proguard/qy;

    return-void
.end method

.method public static synthetic jk()Lcom/tencent/bugly/proguard/qy;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/qy$a;->HH:Lcom/tencent/bugly/proguard/qy;

    return-object v0
.end method
