.class public final Lcom/tencent/bugly/proguard/cq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/cq$c;,
        Lcom/tencent/bugly/proguard/cq$b;,
        Lcom/tencent/bugly/proguard/cq$a;
    }
.end annotation


# static fields
.field private static fa:Z = true


# instance fields
.field private T:Z

.field public eW:J

.field private eX:Landroid/content/Context;

.field private eY:J

.field private eZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/cq;->eW:J

    iput-object p1, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/tencent/bugly/proguard/cq;->T:Z

    :try_start_0
    const-string p1, "userInfoMinInterval"

    const-string p2, "300000"

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/cq;->eW:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static J(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation

    const-string v0, "t_ui"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_pc = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lcom/tencent/bugly/proguard/dd;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cq;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v4, " or _id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    :try_start_3
    const-string v4, "[Database] unknown id."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/tencent/bugly/proguard/dd;->n(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "[Database] deleted %s error data %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v1

    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_7
    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v1

    :catchall_3
    move-exception v0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_ut"

    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fw:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_dt"

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dz;->a(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/biz/UserInfoBean;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "_dt"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/dz;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    if-eqz p0, :cond_2

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private static a(Lcom/tencent/bugly/proguard/rt;)Lorg/json/JSONArray;
    .locals 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/tencent/bugly/proguard/rt;->IT:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/rs;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "startTime"

    iget-wide v4, v1, Lcom/tencent/bugly/proguard/rs;->startTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "startType"

    iget-byte v4, v1, Lcom/tencent/bugly/proguard/rs;->Ju:B

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "userId"

    iget-object v4, v1, Lcom/tencent/bugly/proguard/rs;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "proceName"

    iget-object v4, v1, Lcom/tencent/bugly/proguard/rs;->Jv:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "valueMap"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/tencent/bugly/proguard/rs;->iB:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "gatewayIp"

    iget-object v4, v1, Lcom/tencent/bugly/proguard/rs;->IJ:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "coldStart"

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/rs;->IK:Z

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :cond_0
    return-object v0
.end method

.method private a(Lcom/tencent/bugly/proguard/ro;Lcom/tencent/bugly/proguard/rt;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "stage"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    invoke-static {p2}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/proguard/rt;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/proguard/rt;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/proguard/ro;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method private a(Lcom/tencent/bugly/proguard/ro;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "stage"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "first_report"

    iget v2, p0, Lcom/tencent/bugly/proguard/cq;->eZ:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "features_enabled"

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v2, Lcom/tencent/bugly/proguard/cj;->eH:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platformId"

    iget v2, p1, Lcom/tencent/bugly/proguard/ro;->IV:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "prodId"

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ro;->IW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bundleId"

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ro;->IX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ro;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ro;->jZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVer"

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ro;->IY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cmd"

    iget v2, p1, Lcom/tencent/bugly/proguard/ro;->IZ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sBuffer"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "model"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->bx:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "osVer"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->Ja:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "reserved"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ro;->Jb:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sessionId"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->gT:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "strategylastUpdateTime"

    iget-wide v1, p1, Lcom/tencent/bugly/proguard/ro;->Jc:J

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "sdkId"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->gY:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "deviceId"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->K:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "apn"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->Jd:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uploadTime"

    iget-wide v1, p1, Lcom/tencent/bugly/proguard/ro;->fw:J

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "imei"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->Je:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "qimei"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->hc:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "imsi"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->Jf:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "mac"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->Jg:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "androidId"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->he:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "networkType"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ro;->Jh:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "idfv"

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ro;->Ji:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_2
    return-object v0
.end method

.method private static a(Lcom/tencent/bugly/proguard/rt;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    iget-byte v2, p0, Lcom/tencent/bugly/proguard/rt;->D:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "proceName"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/rt;->Jv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/rt;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "valueMap"

    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method

.method private a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget p2, p1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p2

    iget-object p2, p2, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/cq;->J(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "[UserInfo] There are too many user info in local: %d"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;

    move-result-object p2

    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "t_ui"

    invoke-virtual {v2, v4, p2, v3}, Lcom/tencent/bugly/proguard/dd;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/dc;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long p2, v2, v5

    if-ltz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v4, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "[Database] insert %s success with ID: %d"

    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-wide v2, p1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->id:J

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/cq;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/cq;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/cq;->h(Z)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    if-lez v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-wide v5, v5, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-wide v7, v7, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/cq;->i(Z)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iput-wide v2, p2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fw:J

    invoke-direct {p0, p2, v1}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "uploadCheck failed"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget p2, p0, Lcom/tencent/bugly/proguard/cq;->eZ:I

    const/4 v2, 0x2

    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v4

    if-nez v4, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->bS()Ljava/lang/String;

    new-instance v5, Lcom/tencent/bugly/proguard/rt;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/rt;-><init>()V

    iget-object v6, v4, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/bugly/proguard/rt;->Jv:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/bugly/proguard/rt;->K:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    invoke-static {v8}, Lcom/tencent/bugly/proguard/dl;->c(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/proguard/rs;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iput-object v6, v5, Lcom/tencent/bugly/proguard/rt;->IT:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, ""

    const-string v8, "A7"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bR()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A6"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->bQ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A5"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->bN()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A2"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->bN()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A1"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/tencent/bugly/proguard/dh;->cD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A24"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->bO()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A17"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->getCountryName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A15"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->bU()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "A13"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/tencent/bugly/proguard/dh;->hD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "F08"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/tencent/bugly/proguard/dh;->hE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "F09"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->cb()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_7

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v7, v5, Lcom/tencent/bugly/proguard/rt;->iB:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "C04_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-eq p2, v1, :cond_9

    if-eq p2, v2, :cond_8

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "unknown up type %d "

    invoke-static {p2, v2}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iput-byte v2, v5, Lcom/tencent/bugly/proguard/rt;->D:B

    goto :goto_4

    :cond_9
    iput-byte v1, v5, Lcom/tencent/bugly/proguard/rt;->D:B

    :goto_4
    move-object v3, v5

    :cond_a
    :goto_5
    if-nez v3, :cond_b

    const-string p1, "[UserInfo] Failed to create UserInfoPackage."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_b
    invoke-static {v3}, Lcom/tencent/bugly/proguard/dl;->a(Lcom/tencent/bugly/proguard/m;)[B

    move-result-object p2

    if-nez p2, :cond_c

    const-string p1, "[UserInfo] Failed to encode data."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_c
    iget-object v2, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    const/16 v4, 0x348

    invoke-static {v2, v4, p2}, Lcom/tencent/bugly/proguard/dl;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/ro;

    move-result-object p2

    if-nez p2, :cond_d

    const-string p1, "[UserInfo] Request package is null."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_d
    new-instance v4, Lcom/tencent/bugly/proguard/cq$1;

    invoke-direct {v4, p0, p1}, Lcom/tencent/bugly/proguard/cq$1;-><init>(Lcom/tencent/bugly/proguard/cq;Ljava/util/List;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/dj;->cA()Lcom/tencent/bugly/proguard/dj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/dj;->cC()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iy:Ljava/lang/String;

    sget-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ik:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dh;->bE()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string p1, "user info with new protoc"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p2, v3}, Lcom/tencent/bugly/proguard/cq;->b(Lcom/tencent/bugly/proguard/ro;Lcom/tencent/bugly/proguard/rt;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/tencent/bugly/proguard/dp;->cI()Lcom/tencent/bugly/proguard/dp;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://pro.bugly.qq.com/v1/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/upload-json"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/tencent/bugly/proguard/cq;->eZ:I

    if-ne v5, v1, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    :goto_6
    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/dp;->a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;Z)V

    return-void

    :cond_f
    const-string v3, "user info with old protoc"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/dp;->cI()Lcom/tencent/bugly/proguard/dp;

    move-result-object v3

    invoke-static {p2}, Lcom/tencent/bugly/proguard/dl;->a(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/dz;->h([B)[B

    move-result-object p2

    iget v5, p0, Lcom/tencent/bugly/proguard/cq;->eZ:I

    if-ne v5, v1, :cond_10

    const/4 v5, 0x1

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    :goto_7
    move-object v0, v3

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/dp;->a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/cq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/bugly/proguard/cq;->T:Z

    return p0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/cq;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/cq;->eY:J

    return-wide v0
.end method

.method private b(Lcom/tencent/bugly/proguard/ro;Lcom/tencent/bugly/proguard/rt;)Lorg/json/JSONObject;
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lcom/tencent/bugly/proguard/am;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/bugly/proguard/am;-><init>(B)V

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bK()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/dh;->hF:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/am;->buildNumber:Ljava/lang/String;

    const-string v3, "unknow_app_key"

    iput-object v3, v2, Lcom/tencent/bugly/proguard/am;->appKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/dh;->bD:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/am;->bD:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/am;->m(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/am;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    const-string v3, "metric"

    const-string v4, "union_dau"

    invoke-static {v0, v3, v4, v2}, Lcom/tencent/bugly/proguard/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/am;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/proguard/ro;Lcom/tencent/bugly/proguard/rt;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/kz;->gB()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "user_custom"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "Attributes"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v1
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fA:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-wide v1, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fw:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    iget-wide v1, v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cX()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    const-wide/32 v6, 0x927c0

    sub-long v6, v0, v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    iget v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v3, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t_ui"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    const-string v5, " or _id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v4, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/tencent/bugly/proguard/dd;->n(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v1, "[Database] deleted %s data %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private declared-synchronized h(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/cq;->T:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/dp;->cI()Lcom/tencent/bugly/proguard/dp;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/dj;->cA()Lcom/tencent/bugly/proguard/dj;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/dj;->cB()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/dp;->o(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/tencent/bugly/proguard/cq;->J(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/cq;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/cq;->b(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/tencent/bugly/proguard/cq;->c(Ljava/util/List;)I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_6

    const-string v5, "[UserInfo] Upload user info too many times in 10 min: %d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    const/4 v4, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {v3}, Lcom/tencent/bugly/proguard/cq;->d(Ljava/util/List;)V

    :cond_7
    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    const-string v3, "[UserInfo] Upload user info(size: %d)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/proguard/cq;->a(Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :goto_3
    :try_start_2
    const-string p1, "[UserInfo] There is no user info in local database."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private i(Z)Z
    .locals 14

    const-string v0, "userinfo_ratio"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/cy;->K(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "userinfo upload is disabled by remote"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_0
    sget-boolean v0, Lcom/tencent/bugly/proguard/cq;->fa:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    return v2

    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "bugly_last_us_up_tm"

    invoke-direct {p1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v5, 0x400

    if-nez v0, :cond_3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5, v6, v1}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/io/File;Ljava/lang/String;JZ)Z

    goto/16 :goto_6

    :cond_3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->d(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-ltz v9, :cond_5

    sub-long v9, v3, v7

    const-wide/32 v11, 0x5265c00

    cmp-long v13, v9, v11

    if-lez v13, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_6

    sub-long v7, v3, v7

    iget-wide v9, p0, Lcom/tencent/bugly/proguard/cq;->eW:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v5, v6, v1}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/io/File;Ljava/lang/String;JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v7

    :try_start_1
    invoke-static {v7}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v5, v6, v1}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/io/File;Ljava/lang/String;JZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_a

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    goto :goto_6

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    :cond_7
    :goto_2
    throw p1

    :cond_8
    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-eqz v0, :cond_9

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    :cond_9
    :goto_5
    move v2, v1

    :cond_a
    :goto_6
    return v2
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/cq$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/bugly/proguard/cq$c;-><init>(Lcom/tencent/bugly/proguard/cq;J)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/ds;->e(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final bl()V
    .locals 6

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cX()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/cq;->eY:J

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/cq$b;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/cq$b;-><init>(Lcom/tencent/bugly/proguard/cq;)V

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/cq;->eY:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/ds;->e(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final bm()V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/cq$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/cq$2;-><init>(Lcom/tencent/bugly/proguard/cq;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j(IZ)V
    .locals 6

    invoke-static {}, Lcom/tencent/bugly/proguard/dj;->cA()Lcom/tencent/bugly/proguard/dj;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dj;->cC()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->P:Z

    if-nez v0, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    const-string p1, "UserInfo is disable"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    iget v0, p0, Lcom/tencent/bugly/proguard/cq;->eZ:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/tencent/bugly/proguard/cq;->eZ:I

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq;->eX:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    new-instance v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    invoke-direct {v2}, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;-><init>()V

    iput p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    iget-object v4, v0, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bK()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fu:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fw:J

    iget-object v4, v0, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fE:Ljava/lang/String;

    if-ne p1, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput v1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fF:I

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bF()Z

    move-result p1

    iput-boolean p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fC:Z

    iget-object p1, v0, Lcom/tencent/bugly/proguard/dh;->hC:Ljava/lang/String;

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fD:Ljava/lang/String;

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/dh;->fx:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fx:J

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/dh;->fy:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fy:J

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/dh;->fz:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fz:J

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/dh;->fB:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fB:J

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bW()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fI:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->cb()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fJ:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->cc()I

    move-result p1

    iput p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fG:I

    iget p1, v0, Lcom/tencent/bugly/proguard/dh;->fH:I

    iput p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fH:I

    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/kz;->gB()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "user_custom"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fK:Ljava/util/Map;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fK:Ljava/util/Map;

    :cond_4
    iget-object v1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fK:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object p1

    new-instance v0, Lcom/tencent/bugly/proguard/cq$a;

    invoke-direct {v0, p0, v2, p2}, Lcom/tencent/bugly/proguard/cq$a;-><init>(Lcom/tencent/bugly/proguard/cq;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/ds;->e(Ljava/lang/Runnable;J)Z

    return-void
.end method
