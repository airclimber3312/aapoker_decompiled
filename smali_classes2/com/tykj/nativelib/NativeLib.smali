.class public Lcom/tykj/nativelib/NativeLib;
.super Ljava/lang/Object;
.source "NativeLib.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nativelib"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native Anti_check_alive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native Anti_check_inner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native ApkFile(Ljava/lang/String;)Z
.end method

.method public native checkEmulator()Z
.end method

.method public native checkLib()Z
.end method

.method public native checkRoot()Z
.end method

.method public native checkSignature(Ljava/lang/String;)Z
.end method

.method public native checkSignature2(Ljava/lang/String;)Z
.end method

.method public native checkSocket()Z
.end method

.method public native checkXposed()Z
.end method

.method public native httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
