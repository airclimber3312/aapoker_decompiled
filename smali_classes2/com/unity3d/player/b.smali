.class final Lcom/unity3d/player/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/b$a;,
        Lcom/unity3d/player/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/media/AudioManager;

.field private c:Lcom/unity3d/player/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/b;->a:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/unity3d/player/b;->b:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/b;->c:Lcom/unity3d/player/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/b;->c:Lcom/unity3d/player/b$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/b;->c:Lcom/unity3d/player/b$a;

    :cond_0
    return-void
.end method

.method public final a(Lcom/unity3d/player/b$b;)V
    .locals 7

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/unity3d/player/b$a;

    iget-object v3, p0, Lcom/unity3d/player/b;->b:Landroid/media/AudioManager;

    const/4 v4, 0x3

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/player/b$a;-><init>(Lcom/unity3d/player/b;Landroid/os/Handler;Landroid/media/AudioManager;ILcom/unity3d/player/b$b;)V

    iput-object v6, p0, Lcom/unity3d/player/b;->c:Lcom/unity3d/player/b$a;

    iget-object p1, p0, Lcom/unity3d/player/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/unity3d/player/b;->c:Lcom/unity3d/player/b$a;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
