.class final Lcom/tencent/bugly/proguard/re$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/re;->a(Ljava/lang/String;Ljava/lang/String;ZII)V
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

.field final synthetic Ii:Z

.field final synthetic Ij:I

.field final synthetic Ik:I


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/re;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/re$d;->Ie:Lcom/tencent/bugly/proguard/re;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/re$d;->If:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/re$d;->Ig:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/bugly/proguard/re$d;->Ii:Z

    iput p5, p0, Lcom/tencent/bugly/proguard/re$d;->Ij:I

    iput p6, p0, Lcom/tencent/bugly/proguard/re$d;->Ik:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/re$d;->Ie:Lcom/tencent/bugly/proguard/re;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/re$d;->If:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/re$d;->Ig:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/bugly/proguard/re$d;->Ii:Z

    iget v4, p0, Lcom/tencent/bugly/proguard/re$d;->Ij:I

    iget v5, p0, Lcom/tencent/bugly/proguard/re$d;->Ik:I

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/proguard/re;->a(Lcom/tencent/bugly/proguard/re;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method
