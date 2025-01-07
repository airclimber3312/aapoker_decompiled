.class final Lcom/tencent/bugly/proguard/pj$1;
.super Lcom/tencent/bugly/proguard/kj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EK:Lcom/tencent/bugly/proguard/pj;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/pj;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pj$1;->EK:Lcom/tencent/bugly/proguard/pj;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kj;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pj$1;->EK:Lcom/tencent/bugly/proguard/pj;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/pj;->i(Landroid/app/Activity;)V

    return-void
.end method
