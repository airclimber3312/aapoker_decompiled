.class public final Lcom/tencent/bugly/proguard/id;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/id$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/meta/BaseInfo;",
        "",
        "()V",
        "Info",
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
.field private static TAG:Ljava/lang/String;

.field public static bB:Landroid/content/SharedPreferences;

.field public static uK:Lcom/tencent/bugly/proguard/hw;

.field public static final uv:Lcom/tencent/bugly/proguard/am;

.field public static vl:Landroid/app/Application;

.field public static final vm:Lcom/tencent/bugly/proguard/ij;

.field public static vn:Lcom/tencent/bugly/proguard/kr;

.field public static vo:Lorg/json/JSONObject;

.field public static vp:Ljava/lang/Boolean;

.field public static vq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final vr:Lcom/tencent/bugly/proguard/id$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/id$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/id$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/id;->vr:Lcom/tencent/bugly/proguard/id$a;

    const-string v0, "RMonitor_BaseInfo"

    sput-object v0, Lcom/tencent/bugly/proguard/id;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/tencent/bugly/proguard/am;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/am;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    new-instance v0, Lcom/tencent/bugly/proguard/ij;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ij;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/id;->vm:Lcom/tencent/bugly/proguard/ij;

    new-instance v0, Lcom/tencent/bugly/proguard/kr;

    sget-object v2, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/kr;-><init>(Landroid/content/SharedPreferences$Editor;)V

    sput-object v0, Lcom/tencent/bugly/proguard/id;->vn:Lcom/tencent/bugly/proguard/kr;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/id;->vo:Lorg/json/JSONObject;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/tencent/bugly/proguard/id;->vp:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/bugly/proguard/id;->vq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final aL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "version"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v7"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 v0, 0x2f

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/id;->vm:Lcom/tencent/bugly/proguard/ij;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ij;->vK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/appconfig/v7/config/"

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/id;->vm:Lcom/tencent/bugly/proguard/ij;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ij;->vK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/appconfig/v5/config/"

    goto :goto_0
.end method

.method public static final synthetic fD()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/id;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final fE()Lcom/tencent/bugly/proguard/hs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/id$a;->fE()Lcom/tencent/bugly/proguard/hs;

    move-result-object v0

    return-object v0
.end method

.method public static final fF()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/id$a;->fF()V

    return-void
.end method
