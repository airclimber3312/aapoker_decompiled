.class final Lcom/tencent/bugly/proguard/gd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/gd;->eL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic se:Lcom/tencent/bugly/proguard/gd;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/gd;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/gd$1;->se:Lcom/tencent/bugly/proguard/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gd$1;->se:Lcom/tencent/bugly/proguard/gd;

    sget v1, Lcom/tencent/bugly/proguard/gk$a;->st:I

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gd;->r(I)V

    return-void
.end method
