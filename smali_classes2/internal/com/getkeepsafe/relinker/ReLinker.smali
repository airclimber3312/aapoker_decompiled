.class public Linternal/com/getkeepsafe/relinker/ReLinker;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linternal/com/getkeepsafe/relinker/ReLinker$LibraryInstaller;,
        Linternal/com/getkeepsafe/relinker/ReLinker$LibraryLoader;,
        Linternal/com/getkeepsafe/relinker/ReLinker$Logger;,
        Linternal/com/getkeepsafe/relinker/ReLinker$LoadListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static force()Linternal/com/getkeepsafe/relinker/ReLinkerInstance;
    .locals 1

    .line 74
    new-instance v0, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;->force()Linternal/com/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0, v0}, Linternal/com/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Linternal/com/getkeepsafe/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Linternal/com/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, v0, p2}, Linternal/com/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Linternal/com/getkeepsafe/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, p1, p2, v0}, Linternal/com/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Linternal/com/getkeepsafe/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Linternal/com/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .locals 1

    .line 70
    new-instance v0, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Linternal/com/getkeepsafe/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static log(Linternal/com/getkeepsafe/relinker/ReLinker$Logger;)Linternal/com/getkeepsafe/relinker/ReLinkerInstance;
    .locals 1

    .line 78
    new-instance v0, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0}, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;->log(Linternal/com/getkeepsafe/relinker/ReLinker$Logger;)Linternal/com/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object p0

    return-object p0
.end method

.method public static recursively()Linternal/com/getkeepsafe/relinker/ReLinkerInstance;
    .locals 1

    .line 82
    new-instance v0, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Linternal/com/getkeepsafe/relinker/ReLinkerInstance;->recursively()Linternal/com/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method
