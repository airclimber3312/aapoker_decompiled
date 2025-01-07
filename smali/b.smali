.class public Lb;
.super Ljava/lang/Object;
.source "EmulatorDetector.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/snail/antifake/jni/EmulatorDetectUtil;->isEmulator(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
