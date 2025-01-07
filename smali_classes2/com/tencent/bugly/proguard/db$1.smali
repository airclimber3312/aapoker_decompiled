.class final Lcom/tencent/bugly/proguard/db$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/db;->i(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gs:I

.field final synthetic gt:Lcom/tencent/bugly/proguard/db;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/db;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/db$1;->gt:Lcom/tencent/bugly/proguard/db;

    iput p2, p0, Lcom/tencent/bugly/proguard/db$1;->gs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/db$1;->gt:Lcom/tencent/bugly/proguard/db;

    iget v1, p0, Lcom/tencent/bugly/proguard/db$1;->gs:I

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/db;->a(Lcom/tencent/bugly/proguard/db;I)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/db$1;->gt:Lcom/tencent/bugly/proguard/db;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/db;->b(Lcom/tencent/bugly/proguard/db;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tencent/bugly/proguard/db$1;->gs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/db$1;->gt:Lcom/tencent/bugly/proguard/db;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/db;->a(Lcom/tencent/bugly/proguard/db;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
