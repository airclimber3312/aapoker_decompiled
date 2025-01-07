.class final Lcom/tencent/bugly/proguard/re$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/re;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic Ie:Lcom/tencent/bugly/proguard/re;

.field final synthetic If:Ljava/lang/String;

.field final synthetic Ig:Ljava/lang/String;

.field final synthetic Ih:Lcom/tencent/bugly/proguard/jb;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/re;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/re$c;->Ie:Lcom/tencent/bugly/proguard/re;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/re$c;->If:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/re$c;->Ig:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/re$c;->Ih:Lcom/tencent/bugly/proguard/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/re$c;->Ie:Lcom/tencent/bugly/proguard/re;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/re$c;->If:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/re$c;->Ig:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/re$c;->Ih:Lcom/tencent/bugly/proguard/jb;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/re;->a(Lcom/tencent/bugly/proguard/re;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V

    return-void
.end method
