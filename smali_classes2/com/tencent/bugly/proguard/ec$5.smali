.class final Lcom/tencent/bugly/proguard/ec$5;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ec;->a(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mn:Lcom/tencent/bugly/proguard/ec;

.field final synthetic mw:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ec;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ec$5;->mn:Lcom/tencent/bugly/proguard/ec;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ec$5;->mw:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec$5;->mn:Lcom/tencent/bugly/proguard/ec;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ec;->mg:Lcom/tencent/bugly/proguard/eb;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ec$5;->mw:Ljava/util/List;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/bugly/proguard/eb;->a(Ljava/util/List;JZZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "do upload db crash delay, upload crash num: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ec$5;->mw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
