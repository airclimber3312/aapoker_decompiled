.class final Lcom/tencent/bugly/proguard/ff$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field public static final qj:Lcom/tencent/bugly/proguard/ff;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/ff;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ff;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ff$e;->qj:Lcom/tencent/bugly/proguard/ff;

    return-void
.end method
