.class public Landroidx/media2/subtitle/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/subtitle/SubtitleController$Listener;,
        Landroidx/media2/subtitle/SubtitleController$Anchor;,
        Landroidx/media2/subtitle/SubtitleController$Renderer;,
        Landroidx/media2/subtitle/SubtitleController$MediaFormatUtil;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroidx/media2/subtitle/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroidx/media2/subtitle/SubtitleController$Listener;

.field private mRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/subtitle/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderersLock:Ljava/lang/Object;

.field private mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracksLock:Ljava/lang/Object;

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/subtitle/SubtitleController;-><init>(Landroid/content/Context;Landroidx/media2/subtitle/MediaTimeProvider;Landroidx/media2/subtitle/SubtitleController$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/subtitle/MediaTimeProvider;Landroidx/media2/subtitle/SubtitleController$Listener;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroidx/media2/subtitle/SubtitleController$1;

    invoke-direct {v0, p0}, Landroidx/media2/subtitle/SubtitleController$1;-><init>(Landroidx/media2/subtitle/SubtitleController;)V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 85
    new-instance v0, Landroidx/media2/subtitle/SubtitleController$2;

    invoke-direct {v0, p0}, Landroidx/media2/subtitle/SubtitleController$2;-><init>(Landroidx/media2/subtitle/SubtitleController;)V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 287
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 112
    iput-object p2, p0, Landroidx/media2/subtitle/SubtitleController;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

    .line 113
    iput-object p3, p0, Landroidx/media2/subtitle/SubtitleController;->mListener:Landroidx/media2/subtitle/SubtitleController$Listener;

    .line 115
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    .line 116
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mShowing:Z

    .line 117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    const-string p2, "captioning"

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method

.method private checkAnchorLooper()V
    .locals 0

    return-void
.end method

.method private getRenderingWidget()Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/subtitle/SubtitleTrack;->getRenderingWidget()Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2

    .line 521
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroidx/media2/subtitle/SubtitleTrack;
    .locals 4

    .line 348
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/subtitle/SubtitleController$Renderer;

    .line 350
    invoke-virtual {v2, p1}, Landroidx/media2/subtitle/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v2, p1}, Landroidx/media2/subtitle/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroidx/media2/subtitle/SubtitleTrack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 353
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    :try_start_1
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 355
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v3, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 358
    :cond_1
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :catchall_0
    move-exception v1

    .line 359
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 364
    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method doHide()V
    .locals 1

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 398
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Landroidx/media2/subtitle/SubtitleTrack;->hide()V

    :cond_0
    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mShowing:Z

    return-void
.end method

.method doSelectDefaultTrack()V
    .locals 3

    .line 296
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 297
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-eqz v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Landroidx/media2/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    .line 303
    invoke-static {v0, v2, v1}, Landroidx/media2/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {v0}, Landroidx/media2/subtitle/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 309
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleController;->hide()V

    goto :goto_1

    .line 306
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleController;->show()V

    .line 311
    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroidx/media2/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 317
    :cond_4
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleController;->getDefaultTrack()Landroidx/media2/subtitle/SubtitleTrack;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 319
    invoke-virtual {p0, v0}, Landroidx/media2/subtitle/SubtitleController;->selectTrack(Landroidx/media2/subtitle/SubtitleTrack;)Z

    .line 320
    iput-boolean v1, p0, Landroidx/media2/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 321
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_5

    .line 322
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleController;->show()V

    .line 323
    iput-boolean v1, p0, Landroidx/media2/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    :cond_5
    return-void
.end method

.method doSelectTrack(Landroidx/media2/subtitle/SubtitleTrack;)V
    .locals 2

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 179
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroidx/media2/subtitle/SubtitleTrack;->hide()V

    .line 185
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/subtitle/SubtitleTrack;->setTimeProvider(Landroidx/media2/subtitle/MediaTimeProvider;)V

    .line 188
    :cond_1
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    .line 189
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mAnchor:Landroidx/media2/subtitle/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 190
    invoke-direct {p0}, Landroidx/media2/subtitle/SubtitleController;->getRenderingWidget()Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;)V

    .line 193
    :cond_2
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    .line 194
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroidx/media2/subtitle/SubtitleTrack;->setTimeProvider(Landroidx/media2/subtitle/MediaTimeProvider;)V

    .line 195
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroidx/media2/subtitle/SubtitleTrack;->show()V

    .line 198
    :cond_3
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mListener:Landroidx/media2/subtitle/SubtitleController$Listener;

    if-eqz v0, :cond_4

    .line 199
    invoke-interface {v0, p1}, Landroidx/media2/subtitle/SubtitleController$Listener;->onSubtitleTrackSelected(Landroidx/media2/subtitle/SubtitleTrack;)V

    :cond_4
    return-void
.end method

.method doShow()V
    .locals 1

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mShowing:Z

    .line 380
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 381
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Landroidx/media2/subtitle/SubtitleTrack;->show()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDefaultTrack()Landroidx/media2/subtitle/SubtitleTrack;
    .locals 16

    move-object/from16 v1, p0

    .line 230
    iget-object v0, v1, Landroidx/media2/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 235
    :goto_0
    iget-object v3, v1, Landroidx/media2/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 237
    iget-object v5, v1, Landroidx/media2/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v5

    .line 238
    :try_start_0
    iget-object v6, v1, Landroidx/media2/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/subtitle/SubtitleTrack;

    .line 239
    invoke-virtual {v9}, Landroidx/media2/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v10

    const-string v11, "language"

    .line 240
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "is-forced-subtitle"

    const/4 v13, 0x0

    .line 242
    invoke-static {v10, v12, v13}, Landroidx/media2/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    const-string v14, "is-autoselect"

    .line 244
    invoke-static {v10, v14, v4}, Landroidx/media2/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    const-string v15, "is-default"

    .line 246
    invoke-static {v10, v15, v13}, Landroidx/media2/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-eqz v2, :cond_5

    .line 249
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 250
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 251
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-eqz v12, :cond_6

    const/4 v11, 0x0

    goto :goto_7

    :cond_6
    const/16 v11, 0x8

    :goto_7
    if-nez v0, :cond_7

    if-eqz v10, :cond_7

    const/4 v15, 0x4

    goto :goto_8

    :cond_7
    const/4 v15, 0x0

    :goto_8
    add-int/2addr v11, v15

    if-eqz v14, :cond_8

    goto :goto_9

    :cond_8
    const/4 v13, 0x2

    :goto_9
    add-int/2addr v11, v13

    add-int/2addr v11, v4

    if-eqz v3, :cond_a

    if-nez v12, :cond_a

    :cond_9
    :goto_a
    const/4 v4, 0x1

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    if-nez v10, :cond_c

    :cond_b
    if-eqz v4, :cond_9

    if-nez v14, :cond_c

    if-nez v12, :cond_c

    if-eqz v0, :cond_9

    :cond_c
    if-le v11, v8, :cond_9

    move-object v7, v9

    move v8, v11

    goto :goto_a

    .line 270
    :cond_d
    monitor-exit v5

    return-object v7

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectedTrack()Landroidx/media2/subtitle/SubtitleTrack;
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/subtitle/SubtitleTrack;

    return-object v0
.end method

.method public getTracks()[Landroidx/media2/subtitle/SubtitleTrack;
    .locals 3

    .line 135
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media2/subtitle/SubtitleTrack;

    .line 137
    iget-object v2, p0, Landroidx/media2/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 3

    .line 460
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/subtitle/SubtitleController$Renderer;

    .line 463
    invoke-virtual {v2, p1}, Landroidx/media2/subtitle/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 467
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 468
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hide()V
    .locals 2

    .line 392
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public registerRenderer(Landroidx/media2/subtitle/SubtitleController$Renderer;)V
    .locals 2

    .line 443
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 2

    .line 330
    invoke-direct {p0}, Landroidx/media2/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 331
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleController;->hide()V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0}, Landroidx/media2/subtitle/SubtitleController;->selectTrack(Landroidx/media2/subtitle/SubtitleTrack;)Z

    .line 333
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 335
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 336
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    .line 291
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public selectTrack(Landroidx/media2/subtitle/SubtitleTrack;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAnchor(Landroidx/media2/subtitle/SubtitleController$Anchor;)V
    .locals 2

    .line 496
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mAnchor:Landroidx/media2/subtitle/SubtitleController$Anchor;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 501
    invoke-direct {p0}, Landroidx/media2/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 502
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mAnchor:Landroidx/media2/subtitle/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroidx/media2/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;)V

    .line 504
    :cond_1
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleController;->mAnchor:Landroidx/media2/subtitle/SubtitleController$Anchor;

    .line 505
    iput-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 507
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mAnchor:Landroidx/media2/subtitle/SubtitleController$Anchor;

    invoke-interface {v0}, Landroidx/media2/subtitle/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 508
    invoke-direct {p0}, Landroidx/media2/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 509
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleController;->mAnchor:Landroidx/media2/subtitle/SubtitleController$Anchor;

    invoke-direct {p0}, Landroidx/media2/subtitle/SubtitleController;->getRenderingWidget()Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media2/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;)V

    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    .line 374
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method
