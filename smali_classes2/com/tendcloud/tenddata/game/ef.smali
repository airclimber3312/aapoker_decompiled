.class public Lcom/tendcloud/tenddata/game/ef;
.super Lcom/tendcloud/tenddata/game/dy;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dy;-><init>()V

    const-string v0, "os"

    const-string v1, "android"

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "osVersionName"

    .line 21
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "osVersionCode"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "locale"

    .line 25
    invoke-static {}, Lcom/tendcloud/tenddata/game/ef;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timezoneV"

    .line 27
    invoke-static {}, Lcom/tendcloud/tenddata/game/ef;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "language"

    .line 28
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "romVersion"

    .line 29
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "basebandVersion"

    .line 31
    invoke-static {}, Lcom/tendcloud/tenddata/game/ef;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "osBuild"

    .line 34
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 49
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    return-object v1
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 61
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()F
    .locals 2

    .line 78
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v0

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    return v0

    :catchall_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    .line 70
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/ef;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ef;->a_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "timezoneV"

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ef;->a_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "locale"

    .line 44
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
