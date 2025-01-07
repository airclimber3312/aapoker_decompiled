.class public final Lcom/google/android/gms/internal/zzbcz;
.super Ljava/lang/Object;


# static fields
.field private static final zzeus:Lcom/google/android/gms/internal/zzbei;


# instance fields
.field protected final zzcc:I

.field protected final zzfkk:Lcom/google/android/gms/internal/zzbcy;

.field protected final zzfld:Ljava/lang/String;

.field protected final zzfle:J

.field protected final zzflf:Lorg/json/JSONObject;

.field protected final zzflj:I

.field protected final zzflk:Ljava/lang/String;

.field protected final zzfll:I

.field protected final zzflm:I

.field protected final zzfln:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbdc;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzflo:Lorg/json/JSONObject;

.field protected final zzflp:Ljava/lang/String;

.field protected final zzflq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbei;

    const-string v1, "GameManagerMessage"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbei;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbcz;->zzeus:Lcom/google/android/gms/internal/zzbei;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/zzbcy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbdc;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbcy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbcz;->zzflj:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbcz;->zzcc:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbcz;->zzflk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbcz;->zzflf:Lorg/json/JSONObject;

    iput p5, p0, Lcom/google/android/gms/internal/zzbcz;->zzfll:I

    iput p6, p0, Lcom/google/android/gms/internal/zzbcz;->zzflm:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbcz;->zzfln:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbcz;->zzflo:Lorg/json/JSONObject;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzbcz;->zzflp:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzbcz;->zzfld:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/gms/internal/zzbcz;->zzfle:J

    iput-object p13, p0, Lcom/google/android/gms/internal/zzbcz;->zzflq:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/zzbcz;->zzfkk:Lcom/google/android/gms/internal/zzbcy;

    return-void
.end method

.method private static zzb(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbdc;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/zzbdc;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/zzbdc;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/google/android/gms/internal/zzbcz;->zzeus:Lcom/google/android/gms/internal/zzbei;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Exception when attempting to parse PlayerInfoMessageComponent at index %d"

    invoke-virtual {v4, v3, v6, v5}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected static zzw(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzbcz;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "playerId"

    const-string v2, "gameStatusText"

    const-string v3, "gameData"

    const-string v5, "players"

    const-string v6, "lobbyState"

    const-string v7, "gameplayState"

    const-string v8, "extraMessageData"

    const-string v9, "errorDescription"

    const/4 v14, 0x0

    const-string v10, "statusCode"

    const/16 v18, 0x0

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1

    const/4 v12, 0x2

    if-eq v4, v12, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbcz;->zzeus:Lcom/google/android/gms/internal/zzbei;

    const-string v1, "Unrecognized Game Message type %d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbei;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v19, Lcom/google/android/gms/internal/zzbcz;

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbcz;->zzb(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v16, -0x1

    const/4 v1, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, v19

    move v5, v10

    move-object v6, v9

    move-object v7, v8

    move v8, v11

    move v9, v12

    move-object v10, v13

    move-object v11, v15

    move-object v12, v2

    move-object v13, v0

    const/4 v2, 0x0

    move-wide/from16 v14, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v20

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/zzbcz;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/zzbcy;)V

    return-object v19

    :cond_1
    const-string v11, "gameManagerConfig"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v12, Lcom/google/android/gms/internal/zzbcy;

    invoke-direct {v12, v11}, Lcom/google/android/gms/internal/zzbcy;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v17, v12

    goto :goto_0

    :cond_2
    move-object/from16 v17, v18

    :goto_0
    new-instance v19, Lcom/google/android/gms/internal/zzbcz;

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbcz;->zzb(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "requestId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v3, "playerToken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, v19

    move v5, v10

    move-object v6, v9

    move-object v7, v8

    move v8, v11

    move v9, v12

    move-object v10, v13

    move-object v11, v15

    move-object v12, v2

    move-object v13, v1

    const/4 v1, 0x0

    move-wide/from16 v14, v20

    :try_start_1
    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/zzbcz;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/zzbcy;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v19

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/zzbcz;->zzeus:Lcom/google/android/gms/internal/zzbei;

    const-string v3, "Exception while parsing GameManagerMessage from json"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object v18
.end method
