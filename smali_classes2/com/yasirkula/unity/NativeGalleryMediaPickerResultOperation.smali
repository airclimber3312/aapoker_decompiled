.class public Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;
.super Ljava/lang/Object;
.source "NativeGalleryMediaPickerResultOperation.java"


# instance fields
.field private cancelled:Z

.field private final context:Landroid/content/Context;

.field private final data:Landroid/content/Intent;

.field public finished:Z

.field private final mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

.field public progress:I

.field private final savePathDirectory:Ljava/lang/String;

.field private final savePathFilename:Ljava/lang/String;

.field private savedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectMultiple:Z

.field public sentResult:Z

.field private unityResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yasirkula/unity/NativeGalleryMediaReceiver;Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "mediaReceiver",
            "data",
            "selectMultiple",
            "savePathDirectory",
            "savePathFilename"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    .line 39
    iput-object p3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    .line 40
    iput-boolean p4, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->selectMultiple:Z

    .line 41
    iput-object p5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savePathDirectory:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savePathFilename:Ljava/lang/String;

    return-void
.end method

.method private copyToTempFile(Landroid/net/Uri;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "Exception:"

    const-string v10, "Unity"

    const-string v11, "Couldn\'t open input stream: "

    .line 172
    iget-object v0, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object v2, v12

    move-object/from16 v3, p1

    .line 179
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 180
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_display_name"

    .line 182
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "_size"

    .line 183
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v13, v2

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v3, v13

    goto :goto_2

    :cond_0
    move-object v3, v13

    :goto_0
    if-eqz v2, :cond_1

    .line 193
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v2, v13

    move-object v3, v2

    .line 188
    :goto_2
    :try_start_3
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    :cond_2
    const-string v3, "temp"

    :cond_3
    const/16 v0, 0x2e

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_4

    .line 201
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_4

    .line 202
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 205
    :cond_4
    invoke-virtual {v12, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 208
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v13

    :goto_4
    if-nez v0, :cond_6

    const-string v0, ".tmp"

    .line 217
    :cond_6
    sget-boolean v4, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->tryPreserveFilenames:Z

    const/4 v5, 0x0

    if-nez v4, :cond_7

    .line 218
    iget-object v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savePathFilename:Ljava/lang/String;

    goto :goto_5

    .line 219
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 220
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 224
    :cond_8
    :goto_5
    :try_start_4
    invoke-virtual {v12, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_9

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object v13

    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v11, v14, v6

    if-gez v11, :cond_a

    .line 235
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    int-to-long v14, v11

    goto :goto_6

    :catch_3
    nop

    :goto_6
    cmp-long v11, v14, v6

    if-gez v11, :cond_a

    move-wide v14, v6

    .line 245
    :cond_a
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 246
    iget-object v12, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    const/16 v16, -0x1

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    const/16 v17, 0x1

    .line 249
    :goto_7
    iget-object v13, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_c

    .line 251
    iget-object v13, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    add-int/lit8 v11, v17, 0x1

    .line 254
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move/from16 v17, v11

    move-object v11, v12

    const/4 v12, -0x1

    :cond_b
    add-int/2addr v12, v2

    goto :goto_7

    .line 260
    :cond_c
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savePathDirectory:Ljava/lang/String;

    invoke-direct {v0, v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 264
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    cmp-long v3, v14, v6

    if-lez v3, :cond_d

    const/4 v12, 0x0

    goto :goto_8

    :cond_d
    const/4 v12, -0x1

    .line 265
    :goto_8
    :try_start_8
    iput v12, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    const/16 v12, 0x1000

    new-array v12, v12, [B

    .line 269
    :cond_e
    :goto_9
    invoke-virtual {v4, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_11

    .line 271
    iget-boolean v5, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z

    if-eqz v5, :cond_f

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    .line 274
    invoke-virtual {v2, v12, v5, v13}, Ljava/io/OutputStream;->write([BII)V

    if-lez v3, :cond_e

    move-object/from16 v16, v12

    int-to-long v12, v13

    add-long/2addr v6, v12

    long-to-double v12, v6

    move-wide/from16 v18, v6

    long-to-double v5, v14

    div-double/2addr v12, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v5

    double-to-int v5, v12

    .line 280
    iput v5, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_10

    .line 282
    iput v6, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    :cond_10
    move-object/from16 v12, v16

    move-wide/from16 v6, v18

    const/4 v5, 0x0

    goto :goto_9

    .line 286
    :cond_11
    :goto_a
    iget-boolean v5, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z

    if-eqz v5, :cond_12

    .line 288
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 291
    :try_start_9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v2, 0x0

    goto :goto_b

    :cond_12
    if-lez v3, :cond_13

    const/16 v3, 0x64

    .line 294
    :try_start_a
    iput v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    .line 296
    :cond_13
    :goto_b
    iget-boolean v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->selectMultiple:Z

    if-eqz v3, :cond_15

    .line 298
    iget-object v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    if-nez v3, :cond_14

    .line 299
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    .line 301
    :cond_14
    iget-object v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copied media from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_16

    .line 310
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 312
    :cond_16
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_c

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_17

    .line 310
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 312
    :cond_17
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 313
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    .line 317
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :goto_d
    if-eqz v13, :cond_18

    .line 193
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_18
    throw v0
.end method

.method private getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const-string v0, "Media uri isn\'t accessible via File API: "

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 129
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected media uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/yasirkula/unity/NativeGalleryUtils;->GetPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 138
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    .line 141
    iget-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->ShouldGrantPersistableUriPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v2

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    .line 148
    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    .line 156
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :catch_3
    :cond_2
    throw p1

    .line 166
    :catch_4
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->copyToTempFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unity"

    const-string v1, "Cancelled NativeGalleryMediaPickerResultOperation!"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z

    const-string v0, ""

    .line 103
    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public execute()V
    .locals 11

    const-string v0, "Unity"

    const-string v1, ""

    .line 47
    iput-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 52
    :try_start_0
    iget-boolean v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->selectMultiple:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "NativeGalleryMediaPickerResultOperation: "

    if-eqz v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v3, :cond_6

    .line 65
    iget-boolean v8, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    .line 90
    iput v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    .line 91
    iput-boolean v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->finished:Z

    return-void

    .line 68
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 69
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v7, :cond_2

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    const/4 v7, 0x0

    goto :goto_1

    .line 77
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    .line 80
    :cond_3
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 56
    iput-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    .line 58
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Exception:"

    .line 86
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :cond_6
    :goto_3
    iput v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    .line 91
    iput-boolean v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->finished:Z

    return-void

    .line 90
    :goto_4
    iput v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    .line 91
    iput-boolean v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->finished:Z

    .line 92
    throw v0
.end method

.method public sendResultToUnity()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sentResult:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sentResult:Z

    .line 113
    iget-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    if-nez v0, :cond_1

    const-string v0, "Unity"

    const-string v1, "NativeGalleryMediaPickerResultOperation.mediaReceiver became null in sendResultToUnity!"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_1
    iget-boolean v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->selectMultiple:Z

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMultipleMediaReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
