.class public final Lcom/tencent/bugly/proguard/ia;
.super Lcom/tencent/bugly/proguard/ht;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ia$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007B\u0005\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eH\u0016J\"\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/db/table/LinkDataTable;",
        "Lcom/tencent/rmonitor/base/db/BaseTable;",
        "baseDBParam",
        "Lcom/tencent/rmonitor/base/db/BaseDBParam;",
        "linkData",
        "Lcom/tencent/bugly/common/reporter/link/LinkData;",
        "(Lcom/tencent/rmonitor/base/db/BaseDBParam;Lcom/tencent/bugly/common/reporter/link/LinkData;)V",
        "(Lcom/tencent/rmonitor/base/db/BaseDBParam;)V",
        "()V",
        "insert",
        "",
        "dataBase",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "block",
        "Lkotlin/Function0;",
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
.field public static final vc:Lcom/tencent/bugly/proguard/ia$a;


# instance fields
.field private uY:Lcom/tencent/bugly/proguard/hs;

.field private vb:Lcom/tencent/bugly/proguard/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/ia$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ia$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/ia;->vc:Lcom/tencent/bugly/proguard/ia$a;

    new-instance v0, Lcom/tencent/bugly/proguard/ia;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ia;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "link_data"

    const-string v1, "CREATE TABLE link_data (_id INTEGER PRIMARY KEY AUTOINCREMENT,product_id TEXT,process_name TEXT,app_version TEXT,sdk_version TEXT,launch_id TEXT,process_launch_id TEXT,uin TEXT,base_type TEXT,sub_type TEXT,client_identify TEXT,reserved TEXT,status TINYINT,event_time BIGINT,occur_time BIGINT);"

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/ht;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/bugly/proguard/hs;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hs;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    new-instance v0, Lcom/tencent/bugly/proguard/bi;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/bi;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/hs;)V
    .locals 1

    const-string v0, "baseDBParam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ia;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/hs;Lcom/tencent/bugly/proguard/bi;)V
    .locals 1

    const-string v0, "baseDBParam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ia;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Lkotlin/jvm/functions/Function0;)I
    .locals 2
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

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hs;->processName:Ljava/lang/String;

    const-string v1, "process_name"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hs;->uD:Ljava/lang/String;

    const-string v1, "product_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hs;->appVersion:Ljava/lang/String;

    const-string v1, "app_version"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hs;->bD:Ljava/lang/String;

    const-string v1, "sdk_version"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hs;->bA:Ljava/lang/String;

    const-string v1, "uin"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bi;->dt:Ljava/lang/String;

    const-string v1, "launch_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bi;->du:Ljava/lang/String;

    const-string v1, "process_launch_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bi;->dr:Ljava/lang/String;

    const-string v1, "base_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bi;->ds:Ljava/lang/String;

    const-string v1, "sub_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bi;->dv:Ljava/lang/String;

    const-string v1, "client_identify"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reserved"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/hu;->uF:Lcom/tencent/bugly/proguard/hu;

    iget v0, v0, Lcom/tencent/bugly/proguard/hu;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    iget-wide v0, v0, Lcom/tencent/bugly/proguard/bi;->dw:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "event_time"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ia;->vb:Lcom/tencent/bugly/proguard/bi;

    iget-wide v0, v0, Lcom/tencent/bugly/proguard/bi;->dx:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "occur_time"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "link_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 11
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

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v4, "process_name=? and product_id=? and process_launch_id=?"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/hs;->processName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/hs;->uD:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ia;->uY:Lcom/tencent/bugly/proguard/hs;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/hs;->du:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const-string v8, "occur_time DESC"

    const/4 v10, 0x0

    if-lez p2, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    move-object v9, p2

    goto :goto_0

    :cond_0
    move-object v9, v10

    :goto_0
    const-string v2, "link_data"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/bugly/proguard/bi;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/bi;-><init>()V

    const-string v2, "launch_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/bi;->dt:Ljava/lang/String;

    const-string v2, "process_launch_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/bi;->du:Ljava/lang/String;

    const-string v2, "base_type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/bi;->dr:Ljava/lang/String;

    const-string v2, "sub_type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/bi;->ds:Ljava/lang/String;

    const-string v2, "client_identify"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/bi;->dv:Ljava/lang/String;

    const-string v2, "event_time"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/bi;->dw:J

    const-string v2, "occur_time"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/bi;->dx:J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    sget-object p2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_table_LinkDataTable"

    invoke-virtual {p2, v1, p1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object v0
.end method
