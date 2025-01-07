.class public final Lcom/tencent/bugly/proguard/kr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/kr$a;,
        Lcom/tencent/bugly/proguard/kr$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0002\u0014\u0015B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0008J\u0016\u0010\r\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0012J\u0016\u0010\u0013\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/tencent/rmonitor/common/util/AsyncSPEditor;",
        "",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "(Landroid/content/SharedPreferences$Editor;)V",
        "apply",
        "",
        "commit",
        "",
        "putBoolean",
        "key",
        "",
        "value",
        "putFloat",
        "",
        "putInt",
        "",
        "putLong",
        "",
        "putString",
        "CommitRunnable",
        "Companion",
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
.field public static final yV:Lcom/tencent/bugly/proguard/kr$b;


# instance fields
.field public final yU:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/kr$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/kr$b;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/kr;->yV:Lcom/tencent/bugly/proguard/kr$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/kr;->yU:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final commit()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kr;->yU:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/by;->ej:Lcom/tencent/bugly/proguard/by$a;

    new-instance v1, Lcom/tencent/bugly/proguard/kr$a;

    invoke-direct {v1, p0, v0}, Lcom/tencent/bugly/proguard/kr$a;-><init>(Lcom/tencent/bugly/proguard/kr;Landroid/content/SharedPreferences$Editor;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/by$a;->a(Ljava/lang/Runnable;J)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Ljava/lang/String;I)Lcom/tencent/bugly/proguard/kr;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kr;->yU:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-object p0
.end method
