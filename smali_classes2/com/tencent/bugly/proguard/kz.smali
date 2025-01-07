.class public final Lcom/tencent/bugly/proguard/kz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;


# static fields
.field public static final zm:[Ljava/lang/String;


# instance fields
.field private final zn:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final zo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zp:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zq:Lcom/tencent/bugly/proguard/lc;

.field private final zr:Lcom/tencent/bugly/proguard/lc;

.field private final zs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public zt:J

.field zu:Lcom/tencent/bugly/proguard/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "a12"

    const-string v1, "a13"

    const-string v2, "a11"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/kz;->zm:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/kz;->zt:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zu:Lcom/tencent/bugly/proguard/t;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zn:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/tencent/bugly/proguard/kz;->zm:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/tencent/bugly/proguard/lc;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/lc;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zq:Lcom/tencent/bugly/proguard/lc;

    new-instance v0, Lcom/tencent/bugly/proguard/lc;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/lc;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zr:Lcom/tencent/bugly/proguard/lc;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zu:Lcom/tencent/bugly/proguard/t;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/bugly/proguard/t;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/t;->apply()V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kz;->gF()V

    return-void
.end method

.method private static a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kz;->z(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zu:Lcom/tencent/bugly/proguard/t;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/t;->apply()V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kz;->gF()V

    return-void
.end method

.method private bf(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/kz;->STRING_ARRAY_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/kz;->zm:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method private static bg(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private gF()V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/kz;->zt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/kz;->zt:J

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static z(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final E(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/kz;->zm:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/kz;->bf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/kz;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    :goto_1
    return v1
.end method

.method public final addStringToSequence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Lcom/tencent/bugly/proguard/kz;->bg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/kz;->STRING_ARRAY_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/kz;->bf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/kz;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    return v1
.end method

.method public final addStringToStringArrayParam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Lcom/tencent/bugly/proguard/kz;->bg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/kz;->STRING_ARRAY_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/kz;->bf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/kz;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    return v1
.end method

.method public final bd(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/kz;->zm:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/kz;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return v1
.end method

.method public final be(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/kz;->zm:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/tencent/bugly/proguard/kz;->DEFAULT_STRING_ARRAY_VALUE:Ljava/util/List;

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/kz;->gA()Lcom/tencent/bugly/proguard/kz;

    move-result-object v0

    return-object v0
.end method

.method public final gA()Lcom/tencent/bugly/proguard/kz;
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/kz;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/kz;-><init>()V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/kz;->zn:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/kz;->zn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/kz;->zq:Lcom/tencent/bugly/proguard/lc;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/kz;->zq:Lcom/tencent/bugly/proguard/lc;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/lc;->a(Lcom/tencent/bugly/proguard/lc;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/kz;->zr:Lcom/tencent/bugly/proguard/lc;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/kz;->zr:Lcom/tencent/bugly/proguard/lc;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/lc;->a(Lcom/tencent/bugly/proguard/lc;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/kz;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/kz;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public final gB()Lorg/json/JSONObject;
    .locals 6

    const-string v0, "a12"

    const-string v1, "a11"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/kz;->z(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/kz;->z(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v3, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    move-object v2, v5

    :catchall_1
    :cond_3
    return-object v2
.end method

.method public final gC()Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/kz;->a(Lorg/json/JSONObject;Ljava/util/concurrent/ConcurrentHashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-object v0, v1

    :catchall_1
    :cond_0
    return-object v0
.end method

.method public final gD()Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zq:Lcom/tencent/bugly/proguard/lc;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/lc;->zx:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zq:Lcom/tencent/bugly/proguard/lc;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/lc;->gJ()Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/kz;->j(Lorg/json/JSONObject;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/kz;->a(Lorg/json/JSONObject;Ljava/util/concurrent/ConcurrentHashMap;)V

    :cond_4
    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    :cond_5
    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/kz;->a(Lorg/json/JSONObject;Ljava/util/concurrent/ConcurrentHashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-object v0
.end method

.method public final gE()Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zr:Lcom/tencent/bugly/proguard/lc;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/lc;->gJ()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getNumberParam(Ljava/lang/String;)D
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/kz;->NUMBER_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public final getStringArrayParam(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/kz;->STRING_ARRAY_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/tencent/bugly/proguard/kz;->DEFAULT_STRING_ARRAY_VALUE:Ljava/util/List;

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getStringParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kz;->STRING_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zq:Lcom/tencent/bugly/proguard/lc;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/lc;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public final getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zr:Lcom/tencent/bugly/proguard/lc;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/lc;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zq:Lcom/tencent/bugly/proguard/lc;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/lc;->zx:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zr:Lcom/tencent/bugly/proguard/lc;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/lc;->zx:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final putNumberParam(Ljava/lang/String;D)Z
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/kz;->NUMBER_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kz;->zu:Lcom/tencent/bugly/proguard/t;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/bugly/proguard/t;->put(Ljava/lang/String;D)V

    invoke-interface {v1}, Lcom/tencent/bugly/proguard/t;->apply()V

    :cond_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kz;->gF()V

    :cond_2
    return v0
.end method

.method public final putStringParam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kz;->STRING_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ky;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zq:Lcom/tencent/bugly/proguard/lc;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/lc;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/kz;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final putUserData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ky;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zr:Lcom/tencent/bugly/proguard/lc;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/lc;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "user_data_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/kz;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final removeStringFromStringArrayParam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/kz;->bg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/kz;->STRING_ARRAY_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kz;->zo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/kz;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    return v1
.end method
