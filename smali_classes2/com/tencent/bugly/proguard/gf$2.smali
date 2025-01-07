.class final Lcom/tencent/bugly/proguard/gf$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sf:I

.field final synthetic sk:Lcom/tencent/bugly/proguard/gf;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/gf;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/gf$2;->sk:Lcom/tencent/bugly/proguard/gf;

    iput p2, p0, Lcom/tencent/bugly/proguard/gf$2;->sf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gf$2;->sk:Lcom/tencent/bugly/proguard/gf;

    iget v1, p0, Lcom/tencent/bugly/proguard/gf$2;->sf:I

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/gf;->a(Lcom/tencent/bugly/proguard/gf;I)V

    return-void
.end method
