.class public final Lcom/hyphenate/notification/core/b;
.super Ljava/lang/Object;


# static fields
.field private static final A:Ljava/lang/String; = "ext"

.field private static final B:Ljava/lang/String; = "message"

.field private static final C:Ljava/lang/String; = "event_type"

.field private static final D:Ljava/lang/String; = "badge"

.field private static final E:Ljava/lang/String; = "add_num"

.field private static final F:Ljava/lang/String; = "set_num"

.field private static final G:Ljava/lang/String; = "activity"

.field private static final H:Ljava/lang/String; = "need_notification"

.field private static final I:Ljava/lang/String; = "com.hyphenate.notification.intent.RECEIVE_MESSAGE"

.field private static final J:Ljava/lang/String; = "com.hyphenate.notification.cancel."

.field private static L:Lcom/hyphenate/notification/core/b; = null

.field private static final c:Ljava/lang/String; = "em_custom_notification"

.field private static final d:Ljava/lang/String; = "em_notification"

.field private static final e:Ljava/lang/String; = "title"

.field private static final f:Ljava/lang/String; = "content"

.field private static final g:Ljava/lang/String; = "icon_url"

.field private static final h:Ljava/lang/String; = "operation"

.field private static final i:Ljava/lang/String; = "type"

.field private static final j:Ljava/lang/String; = "open_url"

.field private static final k:Ljava/lang/String; = "open_action"

.field private static final l:Ljava/lang/String; = "open_activity"

.field private static final m:Ljava/lang/String; = "channel_id"

.field private static final n:Ljava/lang/String; = "channel_name"

.field private static final o:Ljava/lang/String; = "channel_level"

.field private static final p:Ljava/lang/String; = "id"

.field private static final q:Ljava/lang/String; = "expires_time"

.field private static final r:Ljava/lang/String; = "cancel_time"

.field private static final s:Ljava/lang/String; = "auto_cancel"

.field private static final t:Ljava/lang/String; = "sound"

.field private static final u:Ljava/lang/String; = "vibrate"

.field private static final v:Ljava/lang/String; = "style"

.field private static final w:Ljava/lang/String; = "big_picture"

.field private static final x:Ljava/lang/String; = "big_txt"

.field private static final y:Ljava/lang/String; = "report"

.field private static final z:Ljava/lang/String; = "task_id"


# instance fields
.field private K:Landroid/os/Handler;

.field private M:Landroid/content/BroadcastReceiver;

.field private N:I

.field private O:Landroid/app/AlarmManager;

.field private P:Landroid/content/BroadcastReceiver;

.field private Q:I

.field a:I

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/hyphenate/notification/core/b;->N:I

    const/16 v1, 0x55

    iput v1, p0, Lcom/hyphenate/notification/core/b;->a:I

    iput v0, p0, Lcom/hyphenate/notification/core/b;->Q:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "notification-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/hyphenate/notification/core/b;->K:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/hyphenate/notification/core/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/hyphenate/notification/core/b;
    .locals 1

    sget-object v0, Lcom/hyphenate/notification/core/b;->L:Lcom/hyphenate/notification/core/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hyphenate/notification/core/b;

    invoke-direct {v0}, Lcom/hyphenate/notification/core/b;-><init>()V

    sput-object v0, Lcom/hyphenate/notification/core/b;->L:Lcom/hyphenate/notification/core/b;

    :cond_0
    sget-object v0, Lcom/hyphenate/notification/core/b;->L:Lcom/hyphenate/notification/core/b;

    return-object v0
.end method

.method private a(IJ)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.hyphenate.notification.cancel."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/chat/a/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notifyId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    iget v3, p0, Lcom/hyphenate/notification/core/b;->Q:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hyphenate/notification/core/b;->Q:I

    const/high16 v4, 0x14000000

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    iget v3, p0, Lcom/hyphenate/notification/core/b;->Q:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hyphenate/notification/core/b;->Q:I

    const/high16 v4, 0x10000000

    :goto_0
    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/hyphenate/notification/core/b;->P:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/hyphenate/notification/core/a;

    invoke-direct {v0}, Lcom/hyphenate/notification/core/a;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/notification/core/b;->P:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/hyphenate/notification/core/b;->P:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/hyphenate/notification/core/b;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/hyphenate/notification/core/b;->O:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/hyphenate/notification/core/b;->O:Landroid/app/AlarmManager;

    invoke-virtual {v0, v3, p2, p3, p1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_3

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/hyphenate/notification/core/b;->O:Landroid/app/AlarmManager;

    invoke-virtual {v0, v3, p2, p3, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/hyphenate/notification/core/b;->O:Landroid/app/AlarmManager;

    invoke-virtual {v0, v3, p2, p3, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_3
    return-void
.end method

.method private a(Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.hyphenate.notification.intent.RECEIVE_MESSAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v1, Lcom/hyphenate/notification/core/b;->M:Landroid/content/BroadcastReceiver;

    if-nez v7, :cond_2

    new-instance v7, Lcom/hyphenate/notification/core/EMNotificationIntentReceiver;

    invoke-direct {v7}, Lcom/hyphenate/notification/core/EMNotificationIntentReceiver;-><init>()V

    iput-object v7, v1, Lcom/hyphenate/notification/core/b;->M:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x21

    if-lt v8, v9, :cond_1

    iget-object v8, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    iget-object v9, v1, Lcom/hyphenate/notification/core/b;->M:Landroid/content/BroadcastReceiver;

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v8, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    iget-object v9, v1, Lcom/hyphenate/notification/core/b;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    const-string v7, "message"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v8, "event_type"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->isNeedNotification()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    new-instance v4, Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v4, "task_id"

    move-object/from16 v5, p4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v5, v7, :cond_5

    iget-object v5, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    iget v7, v1, Lcom/hyphenate/notification/core/b;->N:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v1, Lcom/hyphenate/notification/core/b;->N:I

    const/high16 v8, 0x14000000

    goto :goto_2

    :cond_5
    iget-object v5, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    iget v7, v1, Lcom/hyphenate/notification/core/b;->N:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v1, Lcom/hyphenate/notification/core/b;->N:I

    const/high16 v8, 0x10000000

    :goto_2
    invoke-static {v5, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v5, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "drawable"

    const-string v8, "em_push_small_icon"

    invoke-virtual {v5, v8, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_6

    iget-object v5, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "mipmap"

    invoke-virtual {v5, v8, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_6
    if-gtz v5, :cond_7

    iget-object v5, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationChannelLevel()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->isNotificationAutoClear()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->isNotificationSound()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->isNotificationVibrate()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationNotifyId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getBadgeAdd()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getBadgeSet()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getBadgeClass()Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v15

    iget-object v15, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    move-object/from16 v17, v2

    const-string v2, "notification"

    invoke-virtual {v15, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v15, Lcom/hyphenate/notification/EMNotificationBuilder;

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-direct {v15, v2}, Lcom/hyphenate/notification/EMNotificationBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v5}, Lcom/hyphenate/notification/EMNotificationBuilder;->setSmallIcon(I)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/hyphenate/notification/EMNotificationBuilder;->setAutoCancel(Z)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/hyphenate/notification/EMNotificationBuilder;->setSound(Z)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/hyphenate/notification/EMNotificationBuilder;->setVibrate(Z)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/hyphenate/notification/EMNotificationBuilder;->setTitle(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/hyphenate/notification/EMNotificationBuilder;->setContent(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/hyphenate/notification/EMNotificationBuilder;->setChannelId(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/hyphenate/notification/EMNotificationBuilder;->setChannelName(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/hyphenate/notification/EMNotificationBuilder;->setLevel(I)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    move-object/from16 v5, p2

    invoke-virtual {v2, v5}, Lcom/hyphenate/notification/EMNotificationBuilder;->setStyle(Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;)Lcom/hyphenate/notification/EMNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hyphenate/notification/EMNotificationBuilder;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/hyphenate/notification/EMNotificationBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static/range {p3 .. p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/hyphenate/notification/EMNotificationBuilder;->setIcon(Landroid/graphics/Bitmap;)Lcom/hyphenate/notification/EMNotificationBuilder;

    :cond_8
    if-lez v6, :cond_9

    invoke-virtual {v15, v6}, Lcom/hyphenate/notification/EMNotificationBuilder;->setBadgeNum(I)Lcom/hyphenate/notification/EMNotificationBuilder;

    :cond_9
    invoke-virtual {v15}, Lcom/hyphenate/notification/EMNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v2

    if-nez v2, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/hyphenate/push/a/a;->a()Ljava/lang/String;

    move-result-object v5

    if-lez v6, :cond_b

    const-string v0, "XIAOMI"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "extraNotification"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setMessageCount"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v12

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to set badge for Xiaomi:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;)V

    :cond_b
    :goto_3
    if-lez v4, :cond_d

    const-string v0, "HUAWEI"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "HONOR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "class"

    move-object/from16 v5, v17

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "badgenumber"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v1, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.huawei.android.launcher.settings/badge/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "change_badge"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set badge for Huawei:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;)V

    :cond_d
    :goto_4
    if-lez v16, :cond_e

    move/from16 v3, v16

    iput v3, v1, Lcom/hyphenate/notification/core/b;->a:I

    goto :goto_5

    :cond_e
    iget v0, v1, Lcom/hyphenate/notification/core/b;->a:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/hyphenate/notification/core/b;->a:I

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationCancelTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_f

    iget v0, v1, Lcom/hyphenate/notification/core/b;->a:I

    invoke-direct {v1, v0, v3, v4}, Lcom/hyphenate/notification/core/b;->a(IJ)V

    :cond_f
    iget v0, v1, Lcom/hyphenate/notification/core/b;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/hyphenate/notification/core/b;->a:I

    move-object/from16 v4, v18

    invoke-virtual {v4, v0, v3, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Lcom/hyphenate/notification/EMNotificationMessage;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationExpiresTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "out of range time: task_id:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationStyle()I

    move-result v2

    invoke-virtual {p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".png"

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/hyphenate/notification/core/b$2;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hyphenate/notification/core/b$2;-><init>(Lcom/hyphenate/notification/core/b;ILcom/hyphenate/notification/EMNotificationMessage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v7, v8}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    goto :goto_1

    :cond_1
    const-string v0, ""

    if-nez v2, :cond_2

    new-instance v1, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    invoke-direct {v1}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/hyphenate/notification/core/b;->b(Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationBigText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;

    invoke-direct {v2}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;-><init>()V

    invoke-virtual {v2, v1}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;->setBigTxt(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v2, v0, :cond_4

    invoke-virtual {p1}, Lcom/hyphenate/notification/EMNotificationMessage;->getNotificationBigPicPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/hyphenate/notification/core/b$3;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/hyphenate/notification/core/b$3;-><init>(Lcom/hyphenate/notification/core/b;Ljava/io/File;Lcom/hyphenate/notification/EMNotificationMessage;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v3}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hyphenate/notification/core/b;->b(Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/hyphenate/notification/core/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/hyphenate/notification/core/b;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "em_notification"

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/notification/core/b$4;

    invoke-direct {v2, p0, p3}, Lcom/hyphenate/notification/core/b$4;-><init>(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/hyphenate/cloud/EMHttpClient;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/EMCloudOperationCallback;)V

    return-void
.end method

.method private b(Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/hyphenate/notification/core/b;->K:Landroid/os/Handler;

    new-instance v7, Lcom/hyphenate/notification/core/b$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/notification/core/b$5;-><init>(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/hyphenate/notification/core/b;Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/core/b;->b:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/hyphenate/notification/core/b;->O:Landroid/app/AlarmManager;

    return-void
.end method

.method public a(Lcom/hyphenate/chat/EMMessage;)V
    .locals 9

    const-string v0, "em_notification"

    const-string v1, "report"

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v2

    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMCmdMessageBody;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMCmdMessageBody;->action()Ljava/lang/String;

    move-result-object v2

    const-string v3, "em_custom_notification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->ext()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "task_id"

    const-string v5, ""

    if-eqz v3, :cond_2

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "em_notification is not found"

    invoke-direct {p0, p1}, Lcom/hyphenate/notification/core/b;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMMessage;->getJSONObjectAttribute(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Lcom/hyphenate/notification/EMNotificationMessage;

    invoke-direct {v0}, Lcom/hyphenate/notification/EMNotificationMessage;-><init>()V

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationTitle(Ljava/lang/String;)V

    const-string v2, "content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationContent(Ljava/lang/String;)V

    const-string v2, "style"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationStyle(I)V

    const-string v2, "icon_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationIconUrl(Ljava/lang/String;)V

    const-string v2, "big_picture"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationBigPicPath(Ljava/lang/String;)V

    const-string v2, "big_txt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationBigText(Ljava/lang/String;)V

    const-string v2, "channel_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationChannelName(Ljava/lang/String;)V

    const-string v2, "channel_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationChannelId(Ljava/lang/String;)V

    const-string v2, "channel_level"

    const/4 v6, 0x3

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationChannelLevel(I)V

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationNotifyId(I)V

    const-string v2, "auto_cancel"

    const/4 v6, 0x1

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x0

    if-ne v2, v6, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationAutoClear(Z)V

    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationSound(Z)V

    const-string v2, "vibrate"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_6

    const/4 v7, 0x1

    :cond_6
    invoke-virtual {v0, v7}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationVibrate(Z)V

    const-string v2, "expires_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationExpiresTime(J)V

    const-string v2, "cancel_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/hyphenate/notification/EMNotificationMessage;->setNotificationCancelTime(J)V

    const-string v2, "operation"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/hyphenate/notification/EMNotificationMessage;->setOpenType(I)V

    const-string v7, "open_url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/hyphenate/notification/EMNotificationMessage;->setOpenUrl(Ljava/lang/String;)V

    const-string v7, "open_action"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/hyphenate/notification/EMNotificationMessage;->setOpenAction(Ljava/lang/String;)V

    const-string v7, "open_activity"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setOpenActivity(Ljava/lang/String;)V

    :cond_7
    const-string v2, "ext"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setExtras(Ljava/lang/String;)V

    const-string v2, "badge"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v7, "add_num"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/hyphenate/notification/EMNotificationMessage;->setBadgeAdd(I)V

    const-string v7, "set_num"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/hyphenate/notification/EMNotificationMessage;->setBadgeSet(I)V

    const-string v7, "activity"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/notification/EMNotificationMessage;->setBadgeClass(Ljava/lang/String;)V

    :cond_8
    const-string v2, "need_notification"

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/notification/EMNotificationMessage;->setNeedNotification(Z)V

    invoke-virtual {v0}, Lcom/hyphenate/notification/EMNotificationMessage;->isNeedNotification()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v0, v3}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/notification/EMNotificationMessage;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    invoke-direct {p1}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    invoke-direct {p0, v0, p1, v5, v3}, Lcom/hyphenate/notification/core/b;->b(Lcom/hyphenate/notification/EMNotificationMessage;Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v0, "provider"

    const-string v1, "EASEMOB"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->ARRIVE:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    new-instance v2, Lcom/hyphenate/notification/core/b$1;

    invoke-direct {v2, p0}, Lcom/hyphenate/notification/core/b$1;-><init>(Lcom/hyphenate/notification/core/b;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/hyphenate/chat/EMPushManager;->reportPushAction(Lorg/json/JSONObject;Lcom/hyphenate/chat/EMPushManager$EMPushAction;Lcom/hyphenate/EMCallBack;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
