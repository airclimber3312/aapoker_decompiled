.class final Lcom/tencent/bugly/proguard/kt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/kt;->B(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zc:Landroid/content/SharedPreferences;

.field final synthetic zd:Ljava/lang/String;

.field final synthetic ze:I


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/kt$1;->zc:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/kt$1;->zd:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/bugly/proguard/kt$1;->ze:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kt$1;->zc:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kt$1;->zd:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/tencent/bugly/proguard/kt;->gt()Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lcom/tencent/bugly/proguard/kt$1;->ze:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
