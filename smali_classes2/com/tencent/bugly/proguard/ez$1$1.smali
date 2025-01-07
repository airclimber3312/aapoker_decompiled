.class final Lcom/tencent/bugly/proguard/ez$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ez$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oC:Lcom/tencent/bugly/proguard/fa;

.field final synthetic oD:Lcom/tencent/bugly/proguard/ez$1;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ez$1;Lcom/tencent/bugly/proguard/fa;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$1$1;->oD:Lcom/tencent/bugly/proguard/ez$1;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ez$1$1;->oC:Lcom/tencent/bugly/proguard/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ez$1$1;->oD:Lcom/tencent/bugly/proguard/ez$1;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ".so"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ".odex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ".oat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ".dex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v2, "Matrix.WarmUpDelegate"

    const-string v3, "Warming up so %s"

    invoke-static {v2, v3, p1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ez$1$1;->oC:Lcom/tencent/bugly/proguard/fa;

    invoke-interface {p1, v0, v1}, Lcom/tencent/bugly/proguard/fa;->c(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/ez;->b(Ljava/lang/String;I)V

    :cond_1
    return v1
.end method
