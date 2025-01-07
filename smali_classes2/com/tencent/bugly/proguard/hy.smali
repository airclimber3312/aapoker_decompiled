.class public final Lcom/tencent/bugly/proguard/hy;
.super Lcom/tencent/bugly/proguard/ht;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/hy$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\'\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0007J3\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000b2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0016H\u0002\u00a2\u0006\u0002\u0010\u0017J\u001e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0016H\u0016J{\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0007J\"\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010\u0019\u001a\u00020\u001a2\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u0016H\u0016\u00a8\u0006)"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/db/table/AttaEventTable;",
        "Lcom/tencent/rmonitor/base/db/BaseTable;",
        "()V",
        "batchDelete",
        "",
        "attaEventList",
        "",
        "Lcom/tencent/rmonitor/sla/AttaEvent;",
        "cursorToAttaEvent",
        "columns",
        "",
        "",
        "cursor",
        "Landroid/database/Cursor;",
        "([Ljava/lang/String;Landroid/database/Cursor;)Lcom/tencent/rmonitor/sla/AttaEvent;",
        "delete",
        "attaEvent",
        "ifContain",
        "",
        "target",
        "list",
        "block",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "insert",
        "dataBase",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "query",
        "selection",
        "selectionArgs",
        "distinct",
        "",
        "groupBy",
        "having",
        "orderBy",
        "limit",
        "([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;",
        "replace",
        "search",
        "",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final uT:Lkotlin/Lazy;

.field public static final uU:Lcom/tencent/bugly/proguard/hy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/hy$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/hy$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/hy;->uU:Lcom/tencent/bugly/proguard/hy$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/tencent/bugly/proguard/hy$b;->uV:Lcom/tencent/bugly/proguard/hy$b;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/hy;->uT:Lkotlin/Lazy;

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_base_AttaEventTable"

    const-string v2, "companion object init"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/bugly/proguard/hy;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hy;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "atta_event"

    const-string v1, "CREATE TABLE IF NOT EXISTS atta_event (_id INTEGER PRIMARY KEY AUTOINCREMENT,app_version TEXT,app_name TEXT,app_bundle_id TEXT,app_key TEXT,client_type TEXT,user_id TEXT,sdk_version TEXT,event_code TEXT,event_result INT,event_time BIGINT,event_cost INT,error_code INT,upload_time BIGINT,device_id TEXT,os_version TEXT,manufacturer TEXT,model TEXT,debug INT,product_id TEXT,full_os_version TEXT,param_0 TEXT,param_1 TEXT,param_2 TEXT,param_3 TEXT,param_4 TEXT,param_5 TEXT,param_6 TEXT,param_7 TEXT,param_8 TEXT,param_9 TEXT,param_10 TEXT,param_11 TEXT,param_12 TEXT,param_13 TEXT);"

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/ht;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/qs;)I
    .locals 5

    const-string v0, "attaEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/tencent/bugly/proguard/qs;->id:I

    const-string v2, "_id"

    if-lez v1, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/qs;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "app_version"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_name"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->hq:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_bundle_id"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_key"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_type"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GK:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_id"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk_version"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->bD:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_code"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->He:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/qs;->GN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "event_result"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/qs;->dw:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "event_time"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/qs;->GO:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "event_cost"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/qs;->ri:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "error_code"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/qs;->fw:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "upload_time"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "device_id"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_version"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->cD:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "manufacturer"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GL:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "model"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->bx:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/qs;->GP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "debug"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "product_id"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->vd:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "full_os_version"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GM:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_0"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_1"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GR:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_2"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GS:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_3"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GT:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_4"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GU:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_5"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GV:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_6"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GW:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_7"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GX:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_8"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GY:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_9"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->GZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_10"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->Ha:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_11"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->Hb:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_12"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->Hc:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param_13"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/qs;->Hd:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v1, :cond_1

    const-string v3, "atta_event"

    invoke-virtual {v1, v3, v2, v0}, Lcom/tencent/bugly/proguard/hv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/tencent/bugly/proguard/qs;->id:I

    return v0
.end method

.method private static aJ(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_base_AttaEventTable"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "columns:null selection:null selectionArgs:null limit:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v2, :cond_0

    const-string v3, "atta_event"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/bugly/proguard/hv;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/hy;->g(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/qs;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static synthetic aK(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/hy;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic fy()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/hy;->uT:Lkotlin/Lazy;

    return-object v0
.end method

.method private static g(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/qs;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/qs;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qs;-><init>()V

    new-instance v1, Lcom/tencent/bugly/proguard/hy$c;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$c;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$n;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$n;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$y;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$y;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$ae;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$ae;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$af;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$af;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$ag;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$ag;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$ah;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$ah;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$ai;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$ai;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$aj;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$aj;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$d;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$d;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$e;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$e;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$f;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$f;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$g;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$g;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$h;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$h;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$i;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$i;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$j;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$j;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$k;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$k;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$l;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$l;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$m;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$m;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$o;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$o;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$p;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$p;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$q;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$q;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$r;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$r;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$s;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$s;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$t;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$t;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$u;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$u;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$v;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$v;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$w;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$w;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$x;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$x;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$z;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$z;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$aa;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$aa;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$ab;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$ab;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$ac;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$ac;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v1, Lcom/tencent/bugly/proguard/hy$ad;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/hy$ad;-><init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static t(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;)I"
        }
    .end annotation

    const-string v0, "attaEventList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tencent/bugly/proguard/qs;

    iget v4, v4, Lcom/tencent/bugly/proguard/qs;->id:I

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/qs;

    iget v1, v1, Lcom/tencent/bugly/proguard/qs;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id in ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    check-cast v1, Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "RMonitor_base_AttaEventTable"

    aput-object v4, v1, v3

    const-string v4, "delete sql where:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v0, :cond_5

    const-string v1, "atta_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/tencent/bugly/proguard/hv;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    return v3
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Lkotlin/jvm/functions/Function0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "dataBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "dataBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
