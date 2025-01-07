.class final Lcom/tencent/bugly/proguard/dx$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/dx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic kf:Ljava/lang/String;

.field final synthetic kg:Ljava/lang/String;

.field final synthetic kh:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dx$2;->kf:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/dx$2;->kg:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/dx$2;->kh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dx$2;->kf:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/dx$2;->kg:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/dx$2;->kh:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/dx;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
