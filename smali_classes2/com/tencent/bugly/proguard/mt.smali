.class public final Lcom/tencent/bugly/proguard/mt;
.super Lcom/tencent/bugly/proguard/ms;

# interfaces
.implements Lcom/tencent/bugly/proguard/ng;


# static fields
.field private static Ap:Z = false


# instance fields
.field private final Ao:Lcom/tencent/bugly/proguard/nh;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ms;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/nf;->hm()Lcom/tencent/bugly/proguard/nh;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/mt;->Ao:Lcom/tencent/bugly/proguard/nh;

    return-void
.end method


# virtual methods
.method protected final bk(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mn;
    .locals 4

    sget-boolean v0, Lcom/tencent/bugly/proguard/mt;->Ap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/mt;->Ao:Lcom/tencent/bugly/proguard/nh;

    instance-of v0, v0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;

    if-nez v0, :cond_0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/mt;->F(I)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/tencent/bugly/proguard/ne;

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gP()Lcom/tencent/bugly/proguard/gu;

    move-result-object v1

    iget v1, v1, Lcom/tencent/bugly/proguard/gu;->tg:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gP()Lcom/tencent/bugly/proguard/gu;

    move-result-object v1

    iget v1, v1, Lcom/tencent/bugly/proguard/gu;->tg:I

    invoke-direct {v0, v2, v1}, Lcom/tencent/bugly/proguard/ne;-><init>(ZI)V

    iput-object p0, v0, Lcom/tencent/bugly/proguard/ne;->AG:Lcom/tencent/bugly/proguard/ng;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/mt;->Ao:Lcom/tencent/bugly/proguard/nh;

    invoke-interface {v1, p1, v0}, Lcom/tencent/bugly/proguard/nh;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ne;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fd_dump_exception_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/bugly/proguard/mt;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/mt;->F(I)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    return-object p1
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final he()V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "fd_dump_exception_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onHeapDumpException count="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RMonitor_FdLeak_FdHeapDumper"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/nb;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
