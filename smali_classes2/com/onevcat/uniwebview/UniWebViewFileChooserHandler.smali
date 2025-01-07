.class public final Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;
.super Ljava/lang/Object;
.source "UniWebViewFileChooserHandler.kt"

# interfaces
.implements Lcom/onevcat/uniwebview/UniWebViewActivityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$Companion;,
        Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;,
        Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUniWebViewFileChooserHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniWebViewFileChooserHandler.kt\ncom/onevcat/uniwebview/UniWebViewFileChooserHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,367:1\n1#2:368\n1#2:380\n26#3:369\n11646#4,9:370\n13536#4:379\n13537#4:381\n11655#4:382\n11328#4:387\n11663#4,3:388\n37#5:383\n36#5,3:384\n37#5:391\n36#5,3:392\n37#5:395\n36#5,3:396\n*S KotlinDebug\n*F\n+ 1 UniWebViewFileChooserHandler.kt\ncom/onevcat/uniwebview/UniWebViewFileChooserHandler\n*L\n118#1:380\n82#1:369\n118#1:370,9\n118#1:379\n118#1:381\n118#1:382\n170#1:387\n170#1:388,3\n118#1:383\n118#1:384,3\n176#1:391\n176#1:392,3\n288#1:395\n288#1:396,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 F2\u00020\u0001:\u0002FGB%\u0012\u0014\u0010\u0002\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u001d\u0010\u0018\u001a\u00020\u00102\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0004H\u0002\u00a2\u0006\u0002\u0010\u001aJ\u001d\u0010\u001b\u001a\u00020\u00102\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0004H\u0002\u00a2\u0006\u0002\u0010\u001aJ%\u0010\u001c\u001a\u00020\u00102\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00042\u0006\u0010\u001e\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010\u001fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0014H\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010\u00142\u0006\u0010\"\u001a\u00020\u0005H\u0002J\u0010\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\'H\u0002J\u0010\u0010(\u001a\u00020!2\u0006\u0010)\u001a\u00020\u0017H\u0002J%\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00042\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0004H\u0002\u00a2\u0006\u0002\u0010+J%\u0010,\u001a\u00020-2\u000e\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00042\u0006\u0010/\u001a\u00020\u0010H\u0002\u00a2\u0006\u0002\u00100J\u0012\u00101\u001a\u0004\u0018\u00010\u00122\u0006\u00102\u001a\u00020\u0012H\u0002J\u0010\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u0014H\u0002J\n\u00105\u001a\u0004\u0018\u00010-H\u0002J\'\u00106\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010-H\u0002\u00a2\u0006\u0002\u0010:J\n\u0010;\u001a\u0004\u0018\u00010-H\u0002J*\u0010<\u001a\u00020!2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010=\u001a\u0002082\u0006\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010-H\u0016J\u001d\u0010>\u001a\u00020\u00102\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0004H\u0002\u00a2\u0006\u0002\u0010\u001aJ\u001a\u0010?\u001a\u00020!2\u0006\u0010)\u001a\u00020\u00172\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0016J\u0008\u0010B\u001a\u00020!H\u0016J\u0012\u0010C\u001a\u0004\u0018\u00010\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0002J\u0010\u0010D\u001a\u00020!2\u0006\u0010)\u001a\u00020\u0017H\u0002J\u000e\u0010E\u001a\u00020!2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001f\u0010\u0002\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;",
        "Lcom/onevcat/uniwebview/UniWebViewActivityHandler;",
        "filePathCallback",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
        "(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V",
        "context",
        "Landroid/content/Context;",
        "getFileChooserParams",
        "()Landroid/webkit/WebChromeClient$FileChooserParams;",
        "getFilePathCallback",
        "()Landroid/webkit/ValueCallback;",
        "gotResults",
        "",
        "handlerId",
        "",
        "outputImage",
        "Ljava/io/File;",
        "outputVideo",
        "proxyActivity",
        "Lcom/onevcat/uniwebview/UniWebViewProxyActivity;",
        "acceptsImages",
        "types",
        "([Ljava/lang/String;)Z",
        "acceptsVideos",
        "arrayContainsString",
        "array",
        "target",
        "([Ljava/lang/String;Ljava/lang/String;)Z",
        "copyInputStreamToFile",
        "",
        "uri",
        "file",
        "createChoosingTempFileBasedOn",
        "createTempFileForCapture",
        "mimeType",
        "Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;",
        "finishProxyActivity",
        "activity",
        "getAcceptedMimeTypes",
        "([Ljava/lang/String;)[Ljava/lang/String;",
        "getFileSelectionIntent",
        "Landroid/content/Intent;",
        "acceptTypes",
        "allowMultiple",
        "([Ljava/lang/String;Z)Landroid/content/Intent;",
        "getMimeTypeFromExtension",
        "extension",
        "getOutputUri",
        "capturedFile",
        "getPhotoIntent",
        "getSelectedFiles",
        "resultCode",
        "",
        "data",
        "(ILandroid/content/Intent;)[Landroid/net/Uri;",
        "getVideoIntent",
        "handleResult",
        "requestCode",
        "noAcceptTypesSet",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "processStreamUri",
        "startFileChooser",
        "startFileChooserProxyActivity",
        "Companion",
        "MimeType",
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
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$Companion;

.field private static final FILE_CHOOSER_RESULT_CODE:I = 0x1258e43


# instance fields
.field private context:Landroid/content/Context;

.field private final fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

.field private final filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private gotResults:Z

.field private handlerId:Ljava/lang/String;

.field private outputImage:Ljava/io/File;

.field private outputVideo:Ljava/io/File;

.field private proxyActivity:Lcom/onevcat/uniwebview/UniWebViewProxyActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->Companion:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 26
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    return-void
.end method

.method private final acceptsImages([Ljava/lang/String;)Z
    .locals 1

    .line 143
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getAcceptedMimeTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 144
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->DEFAULT:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->IMAGE:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final acceptsVideos([Ljava/lang/String;)Z
    .locals 3

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getAcceptedMimeTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 153
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->DEFAULT:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->VIDEO:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private final arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 158
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 159
    check-cast v3, Ljava/lang/CharSequence;

    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v5, v1, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final copyInputStreamToFile(Landroid/net/Uri;Ljava/io/File;)V
    .locals 4

    const-string v0, "Empty input stream with uri: "

    .line 344
    sget-object v1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyInputStream uri: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' ToFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 350
    :try_start_1
    sget-object p2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Aborting..."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return-void

    .line 353
    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    .line 356
    :goto_0
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    .line 357
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 364
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_4

    :catch_0
    move-object v1, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-object v2, v1

    .line 361
    :catch_2
    :goto_2
    :try_start_3
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    const-string p2, "copyInputStreamToFile "

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_3

    .line 363
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    :catchall_2
    move-exception p1

    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    .line 364
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    throw p1
.end method

.method private final createChoosingTempFileBasedOn(Landroid/net/Uri;)Ljava/io/File;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "File created: "

    const-string v2, "."

    const-string v3, "Creating temp file with name "

    const-string v4, "Error while createChoosingTempFileBasedOn uri: "

    const/4 v5, 0x0

    .line 313
    :try_start_0
    iget-object v6, v1, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "context"

    if-nez v6, :cond_0

    :try_start_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v8, "tmp_file"

    const-string v9, ""

    if-eqz v6, :cond_2

    .line 318
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "_display_name"

    .line 319
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "fullFileName"

    .line 320
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 321
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-lt v11, v12, :cond_1

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 323
    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/Iterable;

    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v13, :cond_2

    const/4 v2, 0x0

    .line 325
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 328
    :cond_2
    :goto_0
    sget-object v2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 332
    iget-object v2, v1, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->context:Landroid/content/Context;

    if-nez v2, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_3
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 329
    invoke-static {v8, v9, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 334
    sget-object v3, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_4

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-object v6, v5

    .line 337
    :catch_1
    :try_start_3
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_5

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v5

    :catchall_1
    move-exception v0

    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private final createTempFileForCapture(Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    move-object v0, p1

    move-object v1, v0

    goto :goto_1

    .line 246
    :cond_0
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const-string v0, "video-"

    const-string v1, ".mp4"

    goto :goto_0

    .line 240
    :cond_1
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const-string v0, "image-"

    const-string v1, ".jpg"

    :goto_0
    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 252
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to create file as: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 259
    sget-object v2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying to create file as: prefix: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", suffix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 260
    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 262
    :goto_2
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Temp file created: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    const-string p1, "outputFile"

    .line 263
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final finishProxyActivity(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->gotResults:Z

    .line 139
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->finish()V

    return-void
.end method

.method private final getAcceptedMimeTypes([Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .line 167
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->noAcceptTypesSet([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->DEFAULT:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    return-object p1

    .line 387
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 388
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    if-eqz v5, :cond_1

    .line 171
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/text/Regex;

    const-string v8, "\\.\\w+"

    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v6, v1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    const-string v6, "."

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 172
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 387
    check-cast v0, Ljava/util/Collection;

    new-array p1, v2, [Ljava/lang/String;

    .line 394
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getFileSelectionIntent([Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    sget-object v1, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->DEFAULT:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.MIME_TYPES"

    .line 227
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getAcceptedMimeTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 228
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private final getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 185
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getOutputUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 4

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 268
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "fromFile(capturedFile)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "context"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "context.packageName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->context:Landroid/content/Context;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".uniwebview_fileprovider"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "getUriForFile(context, \"\u2026eprovider\", capturedFile)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getPhotoIntent()Landroid/content/Intent;
    .locals 7

    const-string v0, "Output image uri: "

    const/4 v1, 0x0

    .line 194
    :try_start_0
    sget-object v2, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->IMAGE:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-direct {p0, v2}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->createTempFileForCapture(Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;)Ljava/io/File;

    move-result-object v2

    .line 195
    invoke-direct {p0, v2}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 196
    sget-object v4, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v4}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 197
    iput-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputImage:Ljava/io/File;

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "output"

    .line 199
    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 201
    :goto_0
    sget-object v2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPhotoIntent errored (IOException). Cannot create the temp file. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method private final getSelectedFiles(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 281
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 283
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 284
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 285
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "item"

    .line 286
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_1
    check-cast p1, Ljava/util/Collection;

    new-array p2, v0, [Landroid/net/Uri;

    .line 398
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Landroid/net/Uri;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    .line 293
    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method private final getVideoIntent()Landroid/content/Intent;
    .locals 7

    const-string v0, "Output video uri: "

    const/4 v1, 0x0

    .line 210
    :try_start_0
    sget-object v2, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;->VIDEO:Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;

    invoke-direct {p0, v2}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->createTempFileForCapture(Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler$MimeType;)Ljava/io/File;

    move-result-object v2

    .line 211
    invoke-direct {p0, v2}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 212
    sget-object v4, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v4}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 213
    iput-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputVideo:Ljava/io/File;

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "output"

    .line 215
    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 217
    :goto_0
    sget-object v2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVideoIntent errored (IOException). Cannot create the temp file. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method private final noAcceptTypesSet([Ljava/lang/String;)Z
    .locals 3

    .line 181
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    array-length v0, p1

    if-ne v0, v1, :cond_2

    aget-object p1, p1, v2

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method

.method private final processStreamUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    .line 299
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processStreamUri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->createChoosingTempFileBasedOn(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 302
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->copyInputStreamToFile(Landroid/net/Uri;Ljava/io/File;)V

    .line 303
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while processStreamUri. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    .line 306
    move-object p1, v1

    check-cast p1, Landroid/net/Uri;

    :goto_0
    return-object v1
.end method

.method private final startFileChooser(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;)V
    .locals 6

    .line 49
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Starting File Chooser..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    .line 51
    :cond_1
    sget-object v3, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Accept types from file chooser params: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->acceptsImages([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    sget-object v3, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    const-string v4, "params contains image. Adding photo intent."

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->acceptsVideos([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    sget-object v3, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    const-string v4, "params contains video. Adding video intent."

    invoke-virtual {v3, v4}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getVideoIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_4
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 64
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getFileSelectionIntent([Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 66
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHOOSER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/onevcat/uniwebview/R$string;->CHOOSE_IMAGE:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.INTENT"

    .line 68
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-array v0, v2, [Landroid/os/Parcelable;

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x1258e43

    .line 71
    invoke-virtual {p1, v3, v0}, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final getFileChooserParams()Landroid/webkit/WebChromeClient$FileChooserParams;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    return-object v0
.end method

.method public final getFilePathCallback()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->filePathCallback:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public handleResult(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;IILandroid/content/Intent;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleResult. requestCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    const v0, 0x1258e43

    if-eq p2, v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->filePathCallback:Landroid/webkit/ValueCallback;

    if-nez p2, :cond_1

    .line 98
    sget-object p2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p2

    const-string p3, "filePathCallback is null for some reason. Aborting..."

    invoke-virtual {p2, p3}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->finishProxyActivity(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;)V

    return-void

    .line 103
    :cond_1
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputImage:Ljava/io/File;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long p2, v4, v0

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 104
    :goto_0
    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputVideo:Ljava/io/File;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v1, -0x1

    const/4 v4, 0x0

    if-ne p3, v1, :cond_a

    if-eqz p2, :cond_4

    .line 109
    sget-object p3, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p3}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p3

    const-string p4, "imageTaken detected. Callback with output image uri."

    invoke-virtual {p3, p4}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 110
    iget-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->filePathCallback:Landroid/webkit/ValueCallback;

    new-array p4, v2, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputImage:Ljava/io/File;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, p4, v3

    invoke-interface {p3, p4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    if-eqz v0, :cond_5

    .line 112
    sget-object p3, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p3}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p3

    const-string p4, "videoTaken detected. Callback with output video uri."

    invoke-virtual {p3, p4}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 113
    iget-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->filePathCallback:Landroid/webkit/ValueCallback;

    new-array p4, v2, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputVideo:Ljava/io/File;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, p4, v3

    invoke-interface {p3, p4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 115
    :cond_5
    invoke-direct {p0, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->getSelectedFiles(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p3

    .line 116
    sget-object p4, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p4}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File picking detected. externalUris: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Start processing..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 117
    iget-object p4, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_9

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 379
    array-length v2, p3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_7

    aget-object v6, p3, v5

    .line 118
    invoke-direct {p0, v6}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->processStreamUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 378
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 382
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 118
    check-cast v1, Ljava/util/Collection;

    new-array p3, v3, [Landroid/net/Uri;

    .line 386
    invoke-interface {v1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_8

    check-cast p3, [Landroid/net/Uri;

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move-object p3, v4

    .line 117
    :goto_3
    invoke-interface {p4, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 122
    :cond_a
    iget-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->filePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p3, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 125
    :goto_4
    iget-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputImage:Ljava/io/File;

    if-eqz p3, :cond_b

    if-nez p2, :cond_b

    .line 126
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 128
    :cond_b
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputVideo:Ljava/io/File;

    if-eqz p2, :cond_c

    if-nez v0, :cond_c

    .line 129
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 131
    :cond_c
    iput-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputImage:Ljava/io/File;

    .line 132
    iput-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->outputVideo:Ljava/io/File;

    .line 134
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->finishProxyActivity(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;)V

    return-void
.end method

.method public onCreate(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->proxyActivity:Lcom/onevcat/uniwebview/UniWebViewProxyActivity;

    .line 76
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->startFileChooser(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 80
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;->Companion:Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->handlerId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "handlerId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;->remove(Ljava/lang/String;)V

    .line 81
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->gotResults:Z

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Uri;

    .line 369
    check-cast v1, [Ljava/lang/Object;

    .line 82
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final startFileChooserProxyActivity(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;->Companion:Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;

    move-object v1, p0

    check-cast v1, Lcom/onevcat/uniwebview/UniWebViewActivityHandler;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewActivityHandler$Companion;->add(Lcom/onevcat/uniwebview/UniWebViewActivityHandler;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->handlerId:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->context:Landroid/content/Context;

    .line 45
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->Companion:Lcom/onevcat/uniwebview/UniWebViewProxyActivity$Companion;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->handlerId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "handlerId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/onevcat/uniwebview/UniWebViewProxyActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
