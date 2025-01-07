.class final Lcom/tencent/bugly/proguard/ez$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ez$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oE:Ljava/util/HashMap;

.field final synthetic oF:Lcom/tencent/bugly/proguard/ez$2;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ez$2;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$2$1;->oF:Lcom/tencent/bugly/proguard/ez$2;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ez$2$1;->oE:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Matrix.WarmUpDelegate"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_malformed_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/32 v7, 0xa4cb800

    const/4 v9, 0x1

    if-nez v6, :cond_8

    const-string v6, "_temp_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v5}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v6

    iget-wide v10, v6, Landroid/system/StructStat;->st_atime:J

    iget-wide v12, v6, Landroid/system/StructStat;->st_mtime:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    const-string v6, "File(%s) last access time %s"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v5, v13, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v2, v6, v13}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v10

    const-wide/32 v15, 0xf731400

    cmp-long v6, v13, v15

    if-lez v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    const-string v0, "Delete long time no access file(%s)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-static {v2, v0, v4}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v6, v10, v13

    if-ltz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v10, v6

    const-wide/32 v6, 0x240c8400

    cmp-long v4, v10, v6

    if-ltz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    const-string v0, "Delete future file(%s)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-static {v2, v0, v4}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v3

    :cond_3
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".hash"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v3

    :cond_4
    iget-object v6, v1, Lcom/tencent/bugly/proguard/ez$2$1;->oE:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_7

    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, 0x4

    const-string v12, "Delete file(%s) cause %s is newer(%s vs %s)."

    cmp-long v17, v10, v13

    if-lez v17, :cond_6

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v13, v13, v18

    cmp-long v9, v13, v7

    if-ltz v9, :cond_5

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-array v7, v15, [Ljava/lang/Object;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x1

    aput-object v4, v7, v8

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v6, 0x2

    aput-object v4, v7, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v7, v6

    invoke-static {v2, v12, v7}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v4, v1, Lcom/tencent/bugly/proguard/ez$2$1;->oE:Ljava/util/HashMap;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v10

    cmp-long v5, v13, v7

    if-ltz v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v4, v0, v3

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v5, 0x3

    aput-object v4, v0, v5

    invoke-static {v2, v12, v0}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v4, v1, Lcom/tencent/bugly/proguard/ez$2$1;->oE:Ljava/util/HashMap;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    sub-long/2addr v9, v11

    cmp-long v4, v9, v7

    if-ltz v4, :cond_9

    const-string v4, "Delete malformed and temp file %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v2, v4, v6}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v4, ""

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4, v5}, Lcom/tencent/bugly/proguard/fg;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return v3
.end method
