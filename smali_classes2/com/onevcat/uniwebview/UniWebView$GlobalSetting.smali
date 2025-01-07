.class public final Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;
.super Ljava/lang/Object;
.source "UniWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onevcat/uniwebview/UniWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;",
        "",
        "()V",
        "Companion",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;

.field private static allowAutoPlay:Z

.field private static allowJavaScriptOpenWindow:Z

.field private static allowUniversalAccessFromFileURLs:Z

.field private static enableKeyboardAvoidance:Z

.field private static javaScriptEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->Companion:Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->javaScriptEnabled:Z

    .line 33
    sput-boolean v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->enableKeyboardAvoidance:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAllowAutoPlay$cp()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->allowAutoPlay:Z

    return v0
.end method

.method public static final synthetic access$getAllowJavaScriptOpenWindow$cp()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->allowJavaScriptOpenWindow:Z

    return v0
.end method

.method public static final synthetic access$getAllowUniversalAccessFromFileURLs$cp()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->allowUniversalAccessFromFileURLs:Z

    return v0
.end method

.method public static final synthetic access$getEnableKeyboardAvoidance$cp()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->enableKeyboardAvoidance:Z

    return v0
.end method

.method public static final synthetic access$getJavaScriptEnabled$cp()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->javaScriptEnabled:Z

    return v0
.end method

.method public static final synthetic access$setAllowAutoPlay$cp(Z)V
    .locals 0

    .line 27
    sput-boolean p0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->allowAutoPlay:Z

    return-void
.end method

.method public static final synthetic access$setAllowJavaScriptOpenWindow$cp(Z)V
    .locals 0

    .line 27
    sput-boolean p0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->allowJavaScriptOpenWindow:Z

    return-void
.end method

.method public static final synthetic access$setAllowUniversalAccessFromFileURLs$cp(Z)V
    .locals 0

    .line 27
    sput-boolean p0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->allowUniversalAccessFromFileURLs:Z

    return-void
.end method

.method public static final synthetic access$setEnableKeyboardAvoidance$cp(Z)V
    .locals 0

    .line 27
    sput-boolean p0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->enableKeyboardAvoidance:Z

    return-void
.end method

.method public static final synthetic access$setJavaScriptEnabled$cp(Z)V
    .locals 0

    .line 27
    sput-boolean p0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->javaScriptEnabled:Z

    return-void
.end method
