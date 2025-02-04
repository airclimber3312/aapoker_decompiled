.class final Lcom/google/android/gms/internal/zzart;
.super Lcom/google/android/gms/internal/zzari;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zzdzv:Ljava/lang/String;

.field private static final zzdzw:Ljava/lang/String;


# instance fields
.field private final zzdzx:Lcom/google/android/gms/internal/zzaru;

.field private final zzdzy:Lcom/google/android/gms/internal/zzatp;

.field private final zzdzz:Lcom/google/android/gms/internal/zzatp;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hits2"

    aput-object v2, v0, v1

    const-string v3, "hit_id"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "hit_time"

    aput-object v5, v0, v3

    const/4 v6, 0x3

    const-string v7, "hit_url"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "hit_string"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "hit_app_id"

    aput-object v7, v0, v6

    const-string v6, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzart;->zzdzv:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v2, v0, v4

    const-string v1, "SELECT MAX(%s) FROM %s WHERE 1;"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzart;->zzdzw:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzark;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzari;-><init>(Lcom/google/android/gms/internal/zzark;)V

    new-instance v0, Lcom/google/android/gms/internal/zzatp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzatp;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzdzy:Lcom/google/android/gms/internal/zzatp;

    new-instance v0, Lcom/google/android/gms/internal/zzatp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzatp;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzdzz:Lcom/google/android/gms/internal/zzatp;

    new-instance v0, Lcom/google/android/gms/internal/zzaru;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzark;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "google_analytics_v4.db"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzaru;-><init>(Lcom/google/android/gms/internal/zzart;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzdzx:Lcom/google/android/gms/internal/zzaru;

    return-void
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 p4, 0x0

    :try_start_0
    invoke-virtual {p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p4, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p1

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    const-string p3, "Database error"

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p4, :cond_3

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzart;)Lcom/google/android/gms/internal/zzatp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzart;->zzdzz:Lcom/google/android/gms/internal/zzatp;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzart;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/zzart;->zzzb()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p1

    :cond_1
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database returned empty set"

    invoke-direct {p2, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v1, "Database error"

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method private final zzef(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "?"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzo;->zza(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Error parsing hit parameters"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method private final zzeg(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzo;->zza(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Error parsing property parameters"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method private final zzn(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "hit_id"

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    const-string v2, "hits2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :cond_2
    if-eqz v10, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Error selecting hit ids"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_3

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v9

    :goto_1
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method private final zzyu()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    const-string v0, "SELECT COUNT(*) FROM hits2"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzc(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static zzzb()Ljava/lang/String;
    .locals 1

    const-string v0, "google_analytics_v4.db"

    return-object v0
.end method

.method static synthetic zzzc()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzart;->zzdzv:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final beginTransaction()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzdzx:Lcom/google/android/gms/internal/zzaru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaru;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error closing database"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzarh;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Sql error closing database"

    goto :goto_0
.end method

.method public final endTransaction()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzdzx:Lcom/google/android/gms/internal/zzaru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaru;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error opening database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method final isEmpty()Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzart;->zzyu()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setTransactionSuccessful()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;)J
    .locals 2

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p4, v0, p1

    const-wide/16 p1, 0x0

    const-string p3, "SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?"

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/android/gms/internal/zzart;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzasy;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasy;->zzjq()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ht"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "qt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "AppUID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzxy()Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    const-string v1, "Hit length exceeds the maximum allowed size"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzatd;->zza(Lcom/google/android/gms/internal/zzasy;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/zzast;->zzebq:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzart;->zzyu()J

    move-result-wide v2

    add-int/lit8 v4, v1, -0x1

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzn(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Store full, deleting hits to make room, count"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzart;->zzs(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "hit_string"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasy;->zzaan()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "hit_time"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasy;->zzaal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "hit_app_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasy;->zzaap()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzasl;->zzaab()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/zzasl;->zzaac()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "hit_url"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "hits2"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const-string p1, "Failed to insert a hit (got -1)"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarh;->zzee(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v2, "Hit saved to database. db-id, hit"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error storing a hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzo(J)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzasy;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v0, "hit_id"

    const-wide/16 v1, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v1, 0x0

    :try_start_0
    const-string v14, "hits2"

    const-string v2, "hit_time"

    const-string v3, "hit_string"

    const-string v4, "hit_url"

    const-string v5, "hit_app_id"

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v2, "%s ASC"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/zzart;->zzef(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatt;->zzer(Ljava/lang/String;)Z

    move-result v6

    new-instance v14, Lcom/google/android/gms/internal/zzasy;

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzasy;-><init>(Lcom/google/android/gms/internal/zzarh;Ljava/util/Map;JZJI)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v13

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v13

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    const-string v2, "Error loading hits from the database"

    invoke-virtual {v10, v2, v0}, Lcom/google/android/gms/internal/zzarh;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final zzp(J)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Deleting hit, id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzarh;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzart;->zzs(Ljava/util/List;)V

    return-void
.end method

.method public final zzq(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzarn;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "cid"

    const-string v1, "tid"

    const-string v2, "adid"

    const-string v3, "hits_count"

    const-string v4, "params"

    filled-new-array {p2, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    sget-object p2, Lcom/google/android/gms/internal/zzast;->zzebs:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "app_uid=?"

    const-string v1, "0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "properties"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzart;->zzeg(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzarn;

    const-wide/16 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zzarn;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "Read property with empty client id or tracker id"

    invoke-virtual {p0, v1, v5, v6}, Lcom/google/android/gms/internal/zzarh;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p2, :cond_5

    const-string p2, "Sending hits to too many properties. Campaign report might be incorrect"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzarh;->zzed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "Error loading hits from the database"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzarh;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p2
.end method

.method public final zzs(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hit_id in ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    if-lez v1, :cond_1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Invalid hit id"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "Deleting dispatched hits. count"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzarh;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "hits2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    const-string v2, "Deleted fewer hits then expected"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/google/android/gms/internal/zzarh;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error deleting hits"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method protected final zzwk()V
    .locals 0

    return-void
.end method

.method public final zzyz()I
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzdzy:Lcom/google/android/gms/internal/zzatp;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatp;->zzu(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzdzy:Lcom/google/android/gms/internal/zzatp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatp;->start()V

    const-string v0, "Deleting stale hits (if any)"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzart;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "hits2"

    const-string v2, "hit_time < ?"

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "Deleted stale hits, count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzarh;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final zzza()J
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    sget-object v0, Lcom/google/android/gms/internal/zzart;->zzdzw:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
