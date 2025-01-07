.class public final Lshark/HeapAnalysisKt;
.super Ljava/lang/Object;
.source "HeapAnalysis.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0002\u001a\u0008\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0008\u0010\u0004\u001a\u00020\u0001H\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "androidManufacturer",
        "",
        "androidSdkInt",
        "",
        "leakCanaryVersion",
        "shark"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final synthetic access$androidManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lshark/HeapAnalysisKt;->androidManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$androidSdkInt()I
    .locals 1

    .line 1
    invoke-static {}, Lshark/HeapAnalysisKt;->androidSdkInt()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$leakCanaryVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lshark/HeapAnalysisKt;->leakCanaryVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final androidManufacturer()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "android.os.Build"

    .line 285
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "MANUFACTURER"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method

.method private static final androidSdkInt()I
    .locals 2

    :try_start_0
    const-string v0, "android.os.Build$VERSION"

    .line 275
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SDK_INT"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static final leakCanaryVersion()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "leakcanary.internal.InternalLeakCanary"

    .line 295
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "version"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "versionField"

    .line 297
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method
