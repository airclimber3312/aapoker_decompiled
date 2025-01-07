.class final Lcom/tencent/bugly/proguard/ns$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ca:Lcom/tencent/bugly/proguard/ns;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ns;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ns$1;->Ca:Lcom/tencent/bugly/proguard/ns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns$1;->Ca:Lcom/tencent/bugly/proguard/ns;

    sget-object v1, Lcom/tencent/bugly/proguard/nm;->Bq:Lcom/tencent/bugly/proguard/nm;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ns;->b(Lcom/tencent/bugly/proguard/nm;)V

    return-void
.end method
