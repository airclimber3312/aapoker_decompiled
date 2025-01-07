.class Lcom/hyphenate/chat/EMSessionManager;
.super Ljava/lang/Object;


# static fields
.field private static final PREF_KEY_LOGIN_PWD:Ljava/lang/String; = "easemob.chat.loginpwd"

.field private static final PREF_KEY_LOGIN_PWD_GCM:Ljava/lang/String; = "easemob.chat.loginpwd.gcm"

.field private static final PREF_KEY_LOGIN_TOKEN:Ljava/lang/String; = "easemob.chat.login.token"

.field private static final PREF_KEY_LOGIN_TOKEN_GCM:Ljava/lang/String; = "easemob.chat.login.token.gcm"

.field private static final PREF_KEY_LOGIN_USER:Ljava/lang/String; = "easemob.chat.loginuser"

.field private static final PREF_KEY_LOGIN_WITH_TOKEN:Ljava/lang/String; = "easemob.chat.login_with_token"

.field private static final PREF_KEY_TOKEN_AVAILABLE_PERIOD:Ljava/lang/String; = "easemob.chat.token_available_period"

.field private static final PREF_KEY_TOKEN_TIMESTAMP:Ljava/lang/String; = "easemob.chat.token_timestamp"

.field private static final TAG:Ljava/lang/String; = "Session"

.field private static instance:Lcom/hyphenate/chat/EMSessionManager;


# instance fields
.field private appContext:Landroid/content/Context;

.field public currentUser:Lcom/hyphenate/chat/EMContact;

.field private encryptUtils:Lcom/hyphenate/chat/adapter/EMAREncryptUtils;

.field private lastLoginPwd:Ljava/lang/String;

.field private lastLoginToken:Ljava/lang/String;

.field private lastLoginUser:Ljava/lang/String;

.field mClient:Lcom/hyphenate/chat/EMClient;

.field mSessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

.field private timer:Ljava/util/Timer;

.field private tokenAvailablePeriod:J

.field private tokenTimeStamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMSessionManager;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMSessionManager;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMSessionManager;->instance:Lcom/hyphenate/chat/EMSessionManager;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenTimeStamp:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenAvailablePeriod:J

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/hyphenate/chat/EMSessionManager;
    .locals 3

    const-class v0, Lcom/hyphenate/chat/EMSessionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hyphenate/chat/EMSessionManager;->instance:Lcom/hyphenate/chat/EMSessionManager;

    iget-object v2, v1, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMSessionManager;->instance:Lcom/hyphenate/chat/EMSessionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method declared-synchronized checkTokenAvailability(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V
    .locals 7

    const-string v0, "checkTokenAvailability, delay="

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSessionManager;->getTokenTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, "Session"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    const/16 v0, 0x6c

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/EMAConnectionListener;->onTokenNotification(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSessionManager;->getTokenAvailablePeriod()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/EMAConnectionListener;->onTokenNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method clearLastLoginPwd()V
    .locals 3

    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "easemob.chat.loginpwd"

    iget-object v2, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "easemob.chat.loginpwd.gcm"

    iget-object v2, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method clearLastLoginToken()V
    .locals 3

    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "easemob.chat.login.token"

    iget-object v2, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "easemob.chat.login.token.gcm"

    iget-object v2, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method clearLastLoginUser()V
    .locals 3

    const-string v0, ""

    :try_start_0
    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginUser:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    iput-object v0, v1, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    iput-object v0, v1, Lcom/hyphenate/chat/EMContact;->remark:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "easemob.chat.loginuser"

    iget-object v2, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginUser:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method clearLoginWithTokenData()V
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenAvailablePeriod:J

    const-string v0, ""

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenTimeStamp:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "easemob.chat.token_available_period"

    iget-wide v2, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenAvailablePeriod:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "easemob.chat.token_timestamp"

    iget-object v2, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenTimeStamp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "easemob.chat.login_with_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method decryptData([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->encryptUtils:Lcom/hyphenate/chat/adapter/EMAREncryptUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/hyphenate/chat/adapter/EMAREncryptUtils;->aesGcmDecrypt(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized encryptData([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->encryptUtils:Lcom/hyphenate/chat/adapter/EMAREncryptUtils;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAREncryptUtils;->initAESgcm([B)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->encryptUtils:Lcom/hyphenate/chat/adapter/EMAREncryptUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAREncryptUtils;->aesGcmEncrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getDeviceId(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/hyphenate/util/DeviceUuidFactory;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hyphenate/util/DeviceUuidFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/hyphenate/util/DeviceUuidFactory;->getDeviceUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMSessionManager;->saveDeviceId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/hyphenate/util/DeviceUuidFactory;->getBakDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method getLastLoginPwd()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "easemob.chat.loginpwd.gcm"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "easemob.chat.loginpwd"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMSessionManager;->mSessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMASessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMSessionManager;->getSecretKey(Z)[B

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/hyphenate/chat/EMSessionManager;->decryptData([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    return-object v0
.end method

.method getLastLoginToken()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "easemob.chat.login.token.gcm"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "easemob.chat.login.token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMSessionManager;->mSessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMASessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMSessionManager;->getSecretKey(Z)[B

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/hyphenate/chat/EMSessionManager;->decryptData([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    return-object v0
.end method

.method getLastLoginUser()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginUser:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "easemob.chat.loginuser"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginUser:Ljava/lang/String;

    new-instance v0, Lcom/hyphenate/chat/EMContact;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginUser:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMContact;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginUser:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    iget-object v0, v0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    return-object v0
.end method

.method getSecretKey(Z)[B
    .locals 2

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMSessionManager;->getDeviceId(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSessionManager;->mSessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

    invoke-virtual {v1, v0, p1}, Lcom/hyphenate/chat/adapter/EMASessionManager;->getEncryptionKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method getTokenAvailablePeriod()J
    .locals 5

    iget-wide v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenAvailablePeriod:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "easemob.chat.token_available_period"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenAvailablePeriod:J

    :cond_0
    iget-wide v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenAvailablePeriod:J

    return-wide v0
.end method

.method getTokenTimeStamp()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenTimeStamp:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "easemob.chat.token_timestamp"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenTimeStamp:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method init(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMASessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->mClient:Lcom/hyphenate/chat/EMClient;

    iput-object p2, p0, Lcom/hyphenate/chat/EMSessionManager;->mSessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

    new-instance p1, Lcom/hyphenate/chat/adapter/EMAREncryptUtils;

    invoke-direct {p1}, Lcom/hyphenate/chat/adapter/EMAREncryptUtils;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->encryptUtils:Lcom/hyphenate/chat/adapter/EMAREncryptUtils;

    return-void
.end method

.method isLastLoginWithToken()Z
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "easemob.chat.login_with_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method saveDeviceId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/hyphenate/util/DeviceUuidFactory;->saveBakDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method setLastLoginPwd(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/hyphenate/chat/EMSessionManager;->getSecretKey(Z)[B

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/hyphenate/chat/EMSessionManager;->encryptData([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "easemob.chat.loginpwd.gcm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setLastLoginToken(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/hyphenate/chat/EMSessionManager;->getSecretKey(Z)[B

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/hyphenate/chat/EMSessionManager;->encryptData([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "easemob.chat.login.token.gcm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setLastLoginUser(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/EMContact;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMContact;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    iput-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->lastLoginUser:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "easemob.chat.loginuser"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method setLastLoginWithToken(Z)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "easemob.chat.login_with_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method setLoginWithTokenData(ZLjava/lang/String;J)V
    .locals 3

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenTimeStamp:Ljava/lang/String;

    iput-wide p3, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenAvailablePeriod:J

    iget-object p3, p0, Lcom/hyphenate/chat/EMSessionManager;->appContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    :try_start_0
    const-string p4, "easemob.chat.login_with_token"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "easemob.chat.token_timestamp"

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "easemob.chat.token_available_period"

    iget-wide v0, p0, Lcom/hyphenate/chat/EMSessionManager;->tokenAvailablePeriod:J

    invoke-interface {p3, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method declared-synchronized startCountDownTokenAvailableTime(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V
    .locals 12

    const-string v0, "timer.schedule task1, delay="

    const-string v1, "timer.schedule task1\u3001task2, delay= "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSessionManager;->getTokenTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSessionManager;->getTokenAvailablePeriod()J

    move-result-wide v3

    iget-object v5, p0, Lcom/hyphenate/chat/EMSessionManager;->timer:Ljava/util/Timer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    :cond_1
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/hyphenate/chat/EMSessionManager;->timer:Ljava/util/Timer;

    new-instance v5, Lcom/hyphenate/chat/EMSessionManager$1;

    invoke-direct {v5, p0, p1}, Lcom/hyphenate/chat/EMSessionManager$1;-><init>(Lcom/hyphenate/chat/EMSessionManager;Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_2

    const/16 v0, 0x6c

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/EMAConnectionListener;->onTokenNotification(I)V

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0x2

    div-long v10, v3, v8

    cmp-long v2, v6, v10

    if-gtz v2, :cond_3

    const-string v1, "Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSessionManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/EMAConnectionListener;->onTokenNotification(I)V

    goto :goto_0

    :cond_3
    const-string v0, "Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/EMSessionManager$2;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/chat/EMSessionManager$2;-><init>(Lcom/hyphenate/chat/EMSessionManager;Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->timer:Ljava/util/Timer;

    invoke-virtual {p1, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMSessionManager;->timer:Ljava/util/Timer;

    div-long/2addr v3, v8

    sub-long/2addr v6, v3

    invoke-virtual {p1, v0, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
