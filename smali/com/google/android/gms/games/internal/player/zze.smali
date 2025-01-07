.class public final Lcom/google/android/gms/games/internal/player/zze;
.super Ljava/lang/Object;


# instance fields
.field public final name:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final zzick:Ljava/lang/String;

.field public final zzicl:Ljava/lang/String;

.field public final zzicm:Ljava/lang/String;

.field public final zzicn:Ljava/lang/String;

.field public final zzico:Ljava/lang/String;

.field public final zzicp:Ljava/lang/String;

.field public final zzicq:Ljava/lang/String;

.field public final zzicr:Ljava/lang/String;

.field public final zzics:Ljava/lang/String;

.field public final zzict:Ljava/lang/String;

.field public final zzicu:Ljava/lang/String;

.field public final zzicv:Ljava/lang/String;

.field public final zzicw:Ljava/lang/String;

.field public final zzicx:Ljava/lang/String;

.field public final zzicy:Ljava/lang/String;

.field public final zzicz:Ljava/lang/String;

.field private zzida:Ljava/lang/String;

.field public final zzidb:Ljava/lang/String;

.field public final zzidc:Ljava/lang/String;

.field public final zzidd:Ljava/lang/String;

.field public final zzide:Ljava/lang/String;

.field public final zzidf:Ljava/lang/String;

.field public final zzidg:Ljava/lang/String;

.field public final zzidh:Ljava/lang/String;

.field public final zzidi:Ljava/lang/String;

.field public final zzidj:Ljava/lang/String;

.field public final zzidk:Ljava/lang/String;

.field public final zzidl:Ljava/lang/String;

.field public final zzidm:Ljava/lang/String;

.field public final zzidn:Ljava/lang/String;

.field public final zzido:Ljava/lang/String;

.field public final zzidp:Ljava/lang/String;

.field public final zzidq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "most_recent_activity_timestamp"

    const-string v3, "most_recent_game_name"

    const-string v4, "most_recent_external_game_id"

    const-string v5, "is_profile_visible"

    const-string v6, "has_all_public_acls"

    const-string v7, "player_title"

    const-string v8, "last_level_up_timestamp"

    const-string v9, "next_level_max_xp"

    const-string v10, "next_level"

    const-string v11, "current_level_max_xp"

    const-string v12, "current_level_min_xp"

    const-string v13, "current_level"

    const-string v14, "current_xp_total"

    const-string v15, "played_with_timestamp"

    move-object/from16 v16, v2

    const-string v2, "is_in_circles"

    move-object/from16 v17, v3

    const-string v3, "last_updated"

    move-object/from16 v18, v4

    const-string v4, "profile_hi_res_image_url"

    move-object/from16 v19, v5

    const-string v5, "profile_hi_res_image_uri"

    move-object/from16 v20, v6

    const-string v6, "profile_icon_image_url"

    move-object/from16 v21, v7

    const-string v7, "profile_icon_image_uri"

    move-object/from16 v22, v8

    const-string v8, "profile_name"

    move-object/from16 v23, v9

    const-string v9, "external_player_id"

    if-eqz v1, :cond_0

    iput-object v9, v0, Lcom/google/android/gms/games/internal/player/zze;->zzick:Ljava/lang/String;

    iput-object v8, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicl:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicm:Ljava/lang/String;

    iput-object v6, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicn:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/games/internal/player/zze;->zzico:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicp:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicq:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicr:Ljava/lang/String;

    iput-object v15, v0, Lcom/google/android/gms/games/internal/player/zze;->zzics:Ljava/lang/String;

    iput-object v14, v0, Lcom/google/android/gms/games/internal/player/zze;->zzict:Ljava/lang/String;

    iput-object v13, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicu:Ljava/lang/String;

    iput-object v12, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicv:Ljava/lang/String;

    iput-object v11, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicw:Ljava/lang/String;

    iput-object v10, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicx:Ljava/lang/String;

    move-object/from16 v1, v23

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicy:Ljava/lang/String;

    move-object/from16 v1, v22

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicz:Ljava/lang/String;

    move-object/from16 v1, v21

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->title:Ljava/lang/String;

    move-object/from16 v1, v20

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzida:Ljava/lang/String;

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidb:Ljava/lang/String;

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidc:Ljava/lang/String;

    move-object/from16 v1, v17

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidd:Ljava/lang/String;

    move-object/from16 v1, v16

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzide:Ljava/lang/String;

    const-string v1, "most_recent_game_icon_uri"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidf:Ljava/lang/String;

    const-string v1, "most_recent_game_hi_res_uri"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidg:Ljava/lang/String;

    const-string v1, "most_recent_game_featured_uri"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidh:Ljava/lang/String;

    const-string v1, "has_debug_access"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidi:Ljava/lang/String;

    const-string v1, "gamer_tag"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidj:Ljava/lang/String;

    const-string v1, "real_name"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->name:Ljava/lang/String;

    const-string v1, "banner_image_landscape_uri"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidk:Ljava/lang/String;

    const-string v1, "banner_image_landscape_url"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidl:Ljava/lang/String;

    const-string v1, "banner_image_portrait_uri"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidm:Ljava/lang/String;

    const-string v1, "banner_image_portrait_url"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidn:Ljava/lang/String;

    const-string v1, "gamer_friend_status"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzido:Ljava/lang/String;

    const-string v1, "gamer_friend_update_timestamp"

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidp:Ljava/lang/String;

    const-string v1, "is_muted"

    goto/16 :goto_22

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_1

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzick:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v8

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicl:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicm:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :goto_3
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicn:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    :goto_4
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzico:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    :goto_5
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicp:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_6
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicq:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_7
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicr:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_8
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzics:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_9
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzict:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_a
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicu:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_b
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicv:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_c
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicw:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_d
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicx:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_e
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicy:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_f
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzicz:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_10
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->title:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_11
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzida:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_12
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidb:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_14
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_13
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidc:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_15
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_14
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidd:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_16
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_15
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzide:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "most_recent_game_icon_uri"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_17
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_16
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidf:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "most_recent_game_hi_res_uri"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_18
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_17
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidg:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "most_recent_game_featured_uri"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_18
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidh:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "has_debug_access"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_1a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_19
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidi:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gamer_tag"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1a
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidj:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "real_name"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_1c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1b
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->name:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "banner_image_landscape_uri"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_1d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1c
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidk:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "banner_image_landscape_url"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1d
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidl:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "banner_image_portrait_uri"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1e
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidm:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "banner_image_portrait_url"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_20
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1f
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidn:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gamer_friend_status"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_21
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_20
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzido:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gamer_friend_update_timestamp"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_22
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_21
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidp:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_muted"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_22
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zze;->zzidq:Ljava/lang/String;

    return-void
.end method
