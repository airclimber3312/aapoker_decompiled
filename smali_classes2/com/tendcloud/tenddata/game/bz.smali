.class final Lcom/tendcloud/tenddata/game/bz;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)I
    .locals 2

    .line 180
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "######0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 185
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a([[D)I
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [[D

    new-array v2, v0, [D

    const/4 v3, 0x0

    .line 99
    aget-object v4, p0, v3

    aget-wide v5, v4, v3

    aput-wide v5, v2, v3

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    aput-wide v6, v2, v5

    const/4 v6, 0x2

    aget-wide v7, v4, v6

    aput-wide v7, v2, v6

    const/4 v7, 0x3

    aget-wide v8, v4, v7

    aput-wide v8, v2, v7

    aput-object v2, v1, v3

    new-array v2, v0, [D

    aget-object v4, p0, v5

    aget-wide v8, v4, v3

    aput-wide v8, v2, v3

    aget-wide v8, v4, v5

    aput-wide v8, v2, v5

    aget-wide v8, v4, v6

    aput-wide v8, v2, v6

    aget-wide v8, v4, v7

    aput-wide v8, v2, v7

    aput-object v2, v1, v5

    new-array v2, v0, [D

    aget-object v4, p0, v6

    aget-wide v8, v4, v3

    aput-wide v8, v2, v3

    aget-wide v8, v4, v5

    aput-wide v8, v2, v5

    aget-wide v8, v4, v6

    aput-wide v8, v2, v6

    aget-wide v8, v4, v7

    aput-wide v8, v2, v7

    aput-object v2, v1, v6

    new-array v2, v0, [D

    aget-object v4, p0, v7

    aget-wide v8, v4, v3

    aput-wide v8, v2, v3

    aget-wide v8, v4, v5

    aput-wide v8, v2, v5

    aget-wide v8, v4, v6

    aput-wide v8, v2, v6

    aget-wide v8, v4, v7

    aput-wide v8, v2, v7

    aput-object v2, v1, v7

    new-array v2, v0, [[D

    new-array v4, v0, [D

    .line 106
    aget-object v8, p0, v3

    aget-wide v9, v8, v3

    aput-wide v9, v4, v3

    aget-wide v9, v8, v5

    aput-wide v9, v4, v5

    aget-wide v9, v8, v6

    aput-wide v9, v4, v6

    aget-wide v9, v8, v0

    aput-wide v9, v4, v7

    aput-object v4, v2, v3

    new-array v4, v0, [D

    aget-object v8, p0, v5

    aget-wide v9, v8, v3

    aput-wide v9, v4, v3

    aget-wide v9, v8, v5

    aput-wide v9, v4, v5

    aget-wide v9, v8, v6

    aput-wide v9, v4, v6

    aget-wide v9, v8, v0

    aput-wide v9, v4, v7

    aput-object v4, v2, v5

    new-array v4, v0, [D

    aget-object v8, p0, v6

    aget-wide v9, v8, v3

    aput-wide v9, v4, v3

    aget-wide v9, v8, v5

    aput-wide v9, v4, v5

    aget-wide v9, v8, v6

    aput-wide v9, v4, v6

    aget-wide v9, v8, v0

    aput-wide v9, v4, v7

    aput-object v4, v2, v6

    new-array v4, v0, [D

    aget-object p0, p0, v7

    aget-wide v8, p0, v3

    aput-wide v8, v4, v3

    aget-wide v8, p0, v5

    aput-wide v8, v4, v5

    aget-wide v8, p0, v6

    aput-wide v8, v4, v6

    aget-wide v5, p0, v0

    aput-wide v5, v4, v7

    aput-object v4, v2, v7

    .line 113
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bz;->b([[D)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-nez p0, :cond_0

    return v3

    .line 120
    :cond_0
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bz;->b([[D)D

    move-result-wide v2

    div-double/2addr v2, v0

    .line 124
    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/bz;->a(D)I

    move-result p0

    return p0
.end method

.method static a([[I)I
    .locals 14

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 78
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array v1, v2, [[D

    const/4 v3, 0x5

    new-array v4, v3, [D

    .line 81
    aget-object v5, p0, v0

    aget v6, v5, v0

    mul-int v7, v6, v6

    mul-int v7, v7, v6

    int-to-double v7, v7

    aput-wide v7, v4, v0

    mul-int v7, v6, v6

    int-to-double v7, v7

    const/4 v9, 0x1

    aput-wide v7, v4, v9

    int-to-double v6, v6

    const/4 v8, 0x2

    aput-wide v6, v4, v8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x3

    aput-wide v6, v4, v10

    aget v5, v5, v9

    int-to-double v11, v5

    aput-wide v11, v4, v2

    aput-object v4, v1, v0

    new-array v4, v3, [D

    aget-object v5, p0, v9

    aget v11, v5, v0

    mul-int v12, v11, v11

    mul-int v12, v12, v11

    int-to-double v12, v12

    aput-wide v12, v4, v0

    mul-int v12, v11, v11

    int-to-double v12, v12

    aput-wide v12, v4, v9

    int-to-double v11, v11

    aput-wide v11, v4, v8

    aput-wide v6, v4, v10

    aget v5, v5, v9

    int-to-double v11, v5

    aput-wide v11, v4, v2

    aput-object v4, v1, v9

    new-array v4, v3, [D

    aget-object v5, p0, v8

    aget v11, v5, v0

    mul-int v12, v11, v11

    mul-int v12, v12, v11

    int-to-double v12, v12

    aput-wide v12, v4, v0

    mul-int v12, v11, v11

    int-to-double v12, v12

    aput-wide v12, v4, v9

    int-to-double v11, v11

    aput-wide v11, v4, v8

    aput-wide v6, v4, v10

    aget v5, v5, v9

    int-to-double v11, v5

    aput-wide v11, v4, v2

    aput-object v4, v1, v8

    new-array v3, v3, [D

    aget-object p0, p0, v10

    aget v4, p0, v0

    mul-int v5, v4, v4

    mul-int v5, v5, v4

    int-to-double v11, v5

    aput-wide v11, v3, v0

    mul-int v5, v4, v4

    int-to-double v11, v5

    aput-wide v11, v3, v9

    int-to-double v4, v4

    aput-wide v4, v3, v8

    aput-wide v6, v3, v10

    aget p0, p0, v9

    int-to-double v4, p0

    aput-wide v4, v3, v2

    aput-object v3, v1, v10

    .line 88
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bz;->a([[D)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 196
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 199
    :try_start_0
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 203
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 204
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 206
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 207
    invoke-virtual {v1, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 211
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 213
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 223
    :goto_2
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-object v2
.end method

.method static a()[[I
    .locals 10

    const/4 v0, 0x0

    .line 31
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    const-string v6, "Archimedes_p"

    const/4 v7, 0x4

    if-ge v4, v7, :cond_1

    .line 35
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tendcloud/tenddata/game/bz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 37
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    :goto_1
    const/4 v8, 0x6

    if-ge v4, v8, :cond_3

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 44
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-ge v5, v7, :cond_5

    :goto_2
    const/16 v4, 0x8

    if-ge v8, v4, :cond_5

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/bz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 52
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 59
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v7, :cond_6

    .line 60
    move-object v1, v0

    check-cast v1, [[I

    return-object v0

    :cond_6
    :goto_3
    if-ge v3, v7, :cond_7

    .line 64
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 66
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v7, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;II)[[I

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 72
    :catchall_0
    move-object v1, v0

    check-cast v1, [[I

    return-object v0
.end method

.method static a(Ljava/lang/String;II)[[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 286
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const-string v2, ","

    .line 288
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_0

    .line 292
    aget-object v5, v0, v2

    aget-object v6, p0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static b([[D)D
    .locals 15

    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    const/4 v3, 0x1

    .line 136
    aget-object v4, p0, v3

    aget-wide v5, v4, v3

    const/4 v7, 0x0

    aput-wide v5, v2, v7

    const/4 v5, 0x2

    aget-wide v8, v4, v5

    aput-wide v8, v2, v3

    aget-wide v8, v4, v0

    aput-wide v8, v2, v5

    aput-object v2, v1, v7

    new-array v2, v0, [D

    aget-object v4, p0, v5

    aget-wide v8, v4, v3

    aput-wide v8, v2, v7

    aget-wide v8, v4, v5

    aput-wide v8, v2, v3

    aget-wide v8, v4, v0

    aput-wide v8, v2, v5

    aput-object v2, v1, v3

    new-array v2, v0, [D

    aget-object v4, p0, v0

    aget-wide v8, v4, v3

    aput-wide v8, v2, v7

    aget-wide v8, v4, v5

    aput-wide v8, v2, v3

    aget-wide v8, v4, v0

    aput-wide v8, v2, v5

    aput-object v2, v1, v5

    new-array v2, v0, [[D

    new-array v6, v0, [D

    .line 141
    aget-object v10, p0, v3

    aget-wide v11, v10, v7

    aput-wide v11, v6, v7

    aget-wide v11, v10, v5

    aput-wide v11, v6, v3

    aget-wide v11, v10, v0

    aput-wide v11, v6, v5

    aput-object v6, v2, v7

    new-array v6, v0, [D

    aget-object v10, p0, v5

    aget-wide v11, v10, v7

    aput-wide v11, v6, v7

    aget-wide v11, v10, v5

    aput-wide v11, v6, v3

    aget-wide v11, v10, v0

    aput-wide v11, v6, v5

    aput-object v6, v2, v3

    new-array v6, v0, [D

    aget-wide v10, v4, v7

    aput-wide v10, v6, v7

    aget-wide v10, v4, v5

    aput-wide v10, v6, v3

    aput-wide v8, v6, v5

    aput-object v6, v2, v5

    new-array v6, v0, [[D

    new-array v10, v0, [D

    .line 146
    aget-object v11, p0, v3

    aget-wide v12, v11, v7

    aput-wide v12, v10, v7

    aget-wide v12, v11, v3

    aput-wide v12, v10, v3

    aget-wide v12, v11, v0

    aput-wide v12, v10, v5

    aput-object v10, v6, v7

    new-array v10, v0, [D

    aget-object v11, p0, v5

    aget-wide v12, v11, v7

    aput-wide v12, v10, v7

    aget-wide v12, v11, v3

    aput-wide v12, v10, v3

    aget-wide v12, v11, v0

    aput-wide v12, v10, v5

    aput-object v10, v6, v3

    new-array v10, v0, [D

    aget-wide v11, v4, v7

    aput-wide v11, v10, v7

    aget-wide v11, v4, v3

    aput-wide v11, v10, v3

    aput-wide v8, v10, v5

    aput-object v10, v6, v5

    new-array v8, v0, [[D

    new-array v9, v0, [D

    .line 151
    aget-object v10, p0, v3

    aget-wide v11, v10, v7

    aput-wide v11, v9, v7

    aget-wide v11, v10, v3

    aput-wide v11, v9, v3

    aget-wide v11, v10, v5

    aput-wide v11, v9, v5

    aput-object v9, v8, v7

    new-array v9, v0, [D

    aget-object v10, p0, v5

    aget-wide v11, v10, v7

    aput-wide v11, v9, v7

    aget-wide v11, v10, v3

    aput-wide v11, v9, v3

    aget-wide v11, v10, v5

    aput-wide v11, v9, v5

    aput-object v9, v8, v3

    new-array v9, v0, [D

    aget-wide v10, v4, v7

    aput-wide v10, v9, v7

    aget-wide v10, v4, v3

    aput-wide v10, v9, v3

    aget-wide v10, v4, v5

    aput-wide v10, v9, v5

    aput-object v9, v8, v5

    const-wide/16 v9, 0x0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 156
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    aget-object v4, p0, v7

    aget-wide v13, v4, v7

    mul-double v9, v9, v13

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bz;->c([[D)D

    move-result-wide v13

    mul-double v9, v9, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    aget-object v1, p0, v7

    aget-wide v3, v1, v3

    mul-double v13, v13, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bz;->c([[D)D

    move-result-wide v1

    mul-double v13, v13, v1

    add-double/2addr v9, v13

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 157
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    aget-object v3, p0, v7

    aget-wide v4, v3, v5

    mul-double v1, v1, v4

    invoke-static {v6}, Lcom/tendcloud/tenddata/game/bz;->c([[D)D

    move-result-wide v3

    mul-double v1, v1, v3

    add-double/2addr v9, v1

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    aget-object p0, p0, v7

    aget-wide v3, p0, v0

    mul-double v1, v1, v3

    invoke-static {v8}, Lcom/tendcloud/tenddata/game/bz;->c([[D)D

    move-result-wide v3

    mul-double v1, v1, v3

    add-double/2addr v9, v1

    return-wide v9
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 229
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c([[D)D
    .locals 24

    const/4 v0, 0x0

    .line 171
    aget-object v1, p0, v0

    aget-wide v2, v1, v0

    const/4 v4, 0x1

    aget-object v5, p0, v4

    aget-wide v6, v5, v4

    mul-double v8, v2, v6

    const/4 v10, 0x2

    aget-object v11, p0, v10

    aget-wide v12, v11, v10

    mul-double v8, v8, v12

    aget-wide v14, v1, v4

    aget-wide v16, v5, v10

    mul-double v18, v14, v16

    aget-wide v20, v11, v0

    mul-double v18, v18, v20

    add-double v8, v8, v18

    move-wide/from16 v18, v2

    aget-wide v2, v1, v10

    aget-wide v0, v5, v0

    mul-double v22, v2, v0

    aget-wide v4, v11, v4

    mul-double v22, v22, v4

    add-double v8, v8, v22

    neg-double v2, v2

    mul-double v2, v2, v6

    mul-double v2, v2, v20

    add-double/2addr v8, v2

    mul-double v14, v14, v0

    mul-double v14, v14, v12

    sub-double/2addr v8, v14

    mul-double v2, v18, v4

    mul-double v2, v2, v16

    sub-double/2addr v8, v2

    return-wide v8
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 244
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "Pythagoras_phase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    .line 245
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_Ladder_Project"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    .line 255
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 257
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 260
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-object v2

    .line 266
    :cond_2
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 269
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 270
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 272
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v2

    :catchall_0
    :cond_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v1
.end method
