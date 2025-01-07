.class public final Lcom/tencent/bugly/proguard/ix;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/plugin/monitor/PluginController;",
        "",
        "()V",
        "KEY_COUNT_PLUGIN_PREFIX",
        "",
        "KEY_LAST_START_DATE",
        "startDate",
        "",
        "addPluginReportNum",
        "",
        "plugin",
        "",
        "canCollect",
        "",
        "resetReportNum",
        "whetherPluginEventSampling",
        "whetherPluginReportSampling",
        "whetherPluginSampling",
        "sampleRatio",
        "",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final wd:J

.field public static final we:Lcom/tencent/bugly/proguard/ix;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/bugly/proguard/ix;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ix;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-long v0, v0

    sput-wide v0, Lcom/tencent/bugly/proguard/ix;->wd:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(F)Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x97

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, p0

    cmpg-double p0, v2, v4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static fL()V
    .locals 8

    sget-object v0, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "last_start_date"

    if-eqz v0, :cond_0

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    sget-wide v4, Lcom/tencent/bugly/proguard/ix;->wd:J

    :goto_0
    sget-wide v6, Lcom/tencent/bugly/proguard/ix;->wd:J

    sub-long v4, v6, v4

    cmp-long v0, v4, v1

    if-lez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vn:Lcom/tencent/bugly/proguard/kr;

    const-string v1, "key"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/bugly/proguard/kr;->yU:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/gm;->sV:Lcom/tencent/bugly/proguard/gm$a;

    sget-object v0, Lcom/tencent/bugly/proguard/ix$a;->wf:Lcom/tencent/bugly/proguard/ix$a;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/gm$a;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vn:Lcom/tencent/bugly/proguard/kr;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/kr;->commit()Z

    return-void

    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/tencent/bugly/proguard/gm;->sV:Lcom/tencent/bugly/proguard/gm$a;

    new-instance v1, Lcom/tencent/bugly/proguard/ix$b;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/ix$b;-><init>(Landroid/content/SharedPreferences;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gm$a;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static u(I)V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/tencent/bugly/proguard/gh;->ss:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/gh;->ss:I

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vn:Lcom/tencent/bugly/proguard/kr;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count_plugin_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/bugly/proguard/gh;->sr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/tencent/bugly/proguard/gh;->ss:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/bugly/proguard/kr;->e(Ljava/lang/String;I)Lcom/tencent/bugly/proguard/kr;

    sget-object p0, Lcom/tencent/bugly/proguard/id;->vn:Lcom/tencent/bugly/proguard/kr;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/kr;->commit()Z

    :cond_0
    return-void
.end method

.method public static v(I)Z
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/gh;->ss:I

    iget-object p0, p0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget p0, p0, Lcom/tencent/bugly/proguard/hc;->tS:I

    if-ge v1, p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static w(I)Z
    .locals 2

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    :cond_0
    return v1
.end method

.method public static x(I)Z
    .locals 6

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget p0, p0, Lcom/tencent/bugly/proguard/hc;->tT:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, p0

    cmpg-double p0, v2, v4

    if-gez p0, :cond_1

    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
