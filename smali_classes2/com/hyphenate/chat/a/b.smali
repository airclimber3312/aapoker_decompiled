.class public Lcom/hyphenate/chat/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "hyphenate.sdk.pref"

.field private static b:Landroid/content/SharedPreferences; = null

.field private static c:Landroid/content/SharedPreferences$Editor; = null

.field private static d:Lcom/hyphenate/chat/a/b; = null

.field private static e:Ljava/lang/String; = "shared_key_ddversion"

.field private static f:Ljava/lang/String; = "shared_key_ddxml"

.field private static g:Ljava/lang/String; = "shared_key_ddtime"

.field private static h:Ljava/lang/String; = "valid_before"

.field private static i:Ljava/lang/String; = "scheduled_logout_time"

.field private static j:Ljava/lang/String; = "shared_key_fcm_id"

.field private static k:Ljava/lang/String; = "push_flag"

.field private static l:Ljava/lang/String; = "huawei_app_id"

.field private static m:Ljava/lang/String; = "huawei_hms_token"

.field private static n:Ljava/lang/String; = "push_token_"

.field private static final o:Ljava/lang/String; = "sdk_push_token"

.field private static final p:Ljava/lang/String; = "sdk_notifier_name"


# instance fields
.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hyphenate/chat/a/b;->q:J

    const-string v0, "hyphenate.sdk.pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sput-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized a()Lcom/hyphenate/chat/a/b;
    .locals 3

    const-class v0, Lcom/hyphenate/chat/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hyphenate/chat/a/b;->d:Lcom/hyphenate/chat/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/a/b;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hyphenate/chat/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hyphenate/chat/a/b;->d:Lcom/hyphenate/chat/a/b;

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/a/b;->d:Lcom/hyphenate/chat/a/b;
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
.method public a(Lcom/hyphenate/push/EMPushType;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hyphenate/chat/a/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hyphenate/chat/a/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "debugRest"

    const-string v1, "debugIM"

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "debugMode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()J
    .locals 4

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->h:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->f:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 2

    iput-wide p1, p0, Lcom/hyphenate/chat/a/b;->q:J

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->i:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "debugAppkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e()J
    .locals 4

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->g:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->k:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f()Z
    .locals 5

    iget-wide v0, p0, Lcom/hyphenate/chat/a/b;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()J
    .locals 5

    iget-wide v0, p0, Lcom/hyphenate/chat/a/b;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->i:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hyphenate/chat/a/b;->q:J

    return-wide v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->m:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hyphenate/chat/a/b;->q:J

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/hyphenate/chat/a/b;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sdk_push_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "debugIM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sdk_notifier_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/hyphenate/chat/a/b;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "debugRest"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "debugAppkey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "debugMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hyphenate/chat/a/b;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "sdk_push_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/a/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "sdk_notifier_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
