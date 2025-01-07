.class public final Lcom/google/android/gms/internal/zzbax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbbb;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final zzbky:Landroid/content/Context;

.field private final zzfgq:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzfgr:Landroid/net/Uri;

.field private zzfgs:Lcom/google/android/gms/internal/zzbaz;

.field private zzfgt:Lcom/google/android/gms/internal/zzbbc;

.field private zzfgu:Z

.field private zzfgv:Lcom/google/android/gms/internal/zzbay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbax;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzbky:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbax;->zzfgq:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance p1, Lcom/google/android/gms/internal/zzbbc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbbc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgt:Lcom/google/android/gms/internal/zzbbc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbax;->reset()V

    return-void
.end method

.method private final reset()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbax;->zzfgs:Lcom/google/android/gms/internal/zzbaz;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbaz;->cancel(Z)Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgs:Lcom/google/android/gms/internal/zzbaz;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgr:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbax;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbax;->zzfgu:Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbax;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbax;->zzfgv:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method

.method public final onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbax;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbax;->zzfgu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbax;->zzfgv:Lcom/google/android/gms/internal/zzbay;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbay;->zzc(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgs:Lcom/google/android/gms/internal/zzbaz;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgv:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method

.method public final zzl(Landroid/net/Uri;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbax;->reset()V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgr:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbax;->reset()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgr:Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgq:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgq:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbax;->zzbky:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgq:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result v5

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgq:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result v6

    new-instance p1, Lcom/google/android/gms/internal/zzbaz;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbaz;-><init>(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzbbb;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgs:Lcom/google/android/gms/internal/zzbaz;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzbky:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzbaz;

    invoke-direct {v1, p1, p0}, Lcom/google/android/gms/internal/zzbaz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbbb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgs:Lcom/google/android/gms/internal/zzbaz;

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgs:Lcom/google/android/gms/internal/zzbaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgr:Landroid/net/Uri;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/net/Uri;

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/zzbaz;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzbax;->zzfgu:Z

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method
