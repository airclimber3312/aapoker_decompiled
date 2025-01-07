.class final Lcom/tencent/bugly/proguard/qa$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/qa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final FA:Lcom/tencent/bugly/proguard/qa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/qa;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qa;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/qa$a;->FA:Lcom/tencent/bugly/proguard/qa;

    return-void
.end method
