.class public final Lcom/google/android/gms/internal/zzbwn;
.super Ljava/lang/Object;


# static fields
.field public static final zzhlz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhmc:Lcom/google/android/gms/internal/zzbwn;


# instance fields
.field private final zzhma:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbwp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzhmb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbwp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "altitude"

    const-string v2, "duration"

    const-string v3, "food_item"

    const-string v4, "meal_type"

    const-string v5, "repetitions"

    const-string v6, "resistance"

    const-string v7, "resistance_type"

    const-string v8, "debug_session"

    const-string v9, "google.android.fitness.SessionV2"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbwn;->zzhlz:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzbwn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbwn;->zzhmc:Lcom/google/android/gms/internal/zzbwn;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzbwp;

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v1, "latitude"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide v9, -0x3f99800000000000L    # -180.0

    const-wide v11, 0x4066800000000000L    # 180.0

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "longitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide/16 v4, 0x0

    const-wide v6, 0x40c3880000000000L    # 10000.0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "accuracy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide v6, 0x408f400000000000L    # 1000.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "bpm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide v4, -0x3f07960000000000L    # -100000.0

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "altitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "percentage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "confidence"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide v6, 0x408f400000000000L    # 1000.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "weight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide v6, 0x40c57c0000000000L    # 11000.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "speed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwn;->zzhmb:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzbwp;

    const-wide/16 v2, 0x0

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v1, "steps"

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/zzbwn;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "com.google.step_count.delta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide/16 v4, 0x0

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "calories"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbwn;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "com.google.calories.consumed"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide/16 v5, 0x0

    const-wide v7, 0x3e0316b7e5807ca5L    # 5.555555555555555E-10

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbwn;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "com.google.calories.expended"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzbwp;

    const-wide/16 v4, 0x0

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbwp;-><init>(DDLcom/google/android/gms/internal/zzbwo;)V

    const-string v2, "distance"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbwn;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "com.google.distance.delta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwn;->zzhma:Ljava/util/Map;

    return-void
.end method

.method public static zzase()Lcom/google/android/gms/internal/zzbwn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbwn;->zzhmc:Lcom/google/android/gms/internal/zzbwn;

    return-object v0
.end method

.method private static zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final zzhv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwn;->zzhmb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwp;

    return-object p1
.end method

.method final zzz(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwn;->zzhma:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwp;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
