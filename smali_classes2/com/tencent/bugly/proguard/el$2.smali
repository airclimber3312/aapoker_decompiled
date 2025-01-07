.class final Lcom/tencent/bugly/proguard/el$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/el;->dC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nu:Lcom/tencent/bugly/proguard/el;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/el;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/el$2;->nu:Lcom/tencent/bugly/proguard/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el$2;->nu:Lcom/tencent/bugly/proguard/el;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/el;->b(Lcom/tencent/bugly/proguard/el;)V

    return-void
.end method
